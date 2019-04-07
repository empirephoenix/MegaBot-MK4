#include "SecondaryController.h"
#include <EEPROM.h>
#include <APA102.h>
#include <timer-api.h>
#include <FastGPIO.h>

#define PIN_CALIBRATE_SWITCH 12

#define PIN_IN_1 7
#define PIN_IN_2 6
#define PIN_FAILURE 8
#define PIN_SERVO_POSITION A6
#define SERVO_STOP_CYCLES 1
#define DEADBAND 2
#define CALIBRATE_ANTI_BOUNCE_COUNT 1000
#define MOTOR_PWM_TIMER TIMER_DEFAULT
#define PWM_RAMP 25
#define PWM_HZ 100

#define EEPROM_MIN_MAX_ADDR_OFFSET 0
#define PIN_RECEIVER 9

#define PIN_LED_DATA 4
#define PIN_LED_CLOCK 5
#define COLOR_DIM_GREEN (0, 32, 0)
#define COLOR_EXTEND (128,128,0)
#define COLOR_RETRACT (0,255,0)
#define COLOR_CALIBRATE_HOLD (0,0,128)
#define COLOR_CALIBRATE_EXECUTE (0,0,255)
#define COLOR_ERROR_CALIBRATE (0,255,128)
#define COLOR_ERROR (255,0,0)
#define COLOR_ERROR_MC (128,128,128)

APA102<PIN_LED_DATA, PIN_LED_CLOCK> ledStrip;
rgb_color leds[1];
RunningMedian filterdInput = RunningMedian(100);
RunningMedian filterdSensor = RunningMedian(100);

float targetPos = 0;
float curPos = 0;
int calibrateCount = 0;

int min = -1;
int max = -1;

volatile int receiver_input = 0;
volatile int raw_inputs = 0;
volatile long diff = 0;
volatile unsigned long current_time_int0 = 0;
volatile unsigned long upflank_time0 = 0;

volatile int steering_Speed = 0;
volatile int steering_tick = 0;

void out(byte r, byte g, byte b) {
	leds[0].red = r;
	leds[0].green = g;
	leds[0].blue = b;
	ledStrip.write(leds, 1, 4);
}

void eepromWriteInt(int adr, int wert) {
	byte low = wert & 0xFF;
	byte high = (wert >> 8) & 0xFF;
	EEPROM.write(adr, low); // dauert 3,3ms
	EEPROM.write(adr + 1, high);
	return;
}

int eepromReadInt(int adr) {
	byte low = EEPROM.read(adr);
	byte high = EEPROM.read(adr + 1);
	return low + ((high << 8) & 0xFF00);
}

void calibrate() {
	boolean calibrating = true;
	while (calibrating) {
		int prior = analogRead(PIN_SERVO_POSITION);
		steering_Speed = -26;
		delay(500);
		int after = analogRead(PIN_SERVO_POSITION);
		if (abs(prior - after) < DEADBAND * 2) {
			min = (prior + after) / 2;
			calibrating = false;
		}
	}
	calibrating = true;
	while (calibrating) {
		int prior = analogRead(PIN_SERVO_POSITION);
		steering_Speed = 26;
		delay(500);
		int after = analogRead(PIN_SERVO_POSITION);
		if (abs(prior - after) < DEADBAND * 2) {
			max = (prior + after) / 2;
			calibrating = false;
		}
	}
	Serial.print("min ");
	Serial.print(min);
	Serial.print(" max ");
	Serial.println(max);
	eepromWriteInt(EEPROM_MIN_MAX_ADDR_OFFSET + 0, min);
	eepromWriteInt(EEPROM_MIN_MAX_ADDR_OFFSET + 2, max);
	middleSteering();
}

void requestEvent() {
	while (1 < Wire.available()) { // loop through all but the last
		char c = Wire.read(); // receive byte as a character
		Serial.print(c);         // print the character
	}

	Wire.write("SteeringProtocolV1");
	Wire.write((int) curPos);
	Wire.write((int) targetPos);
}

void handleServoInterrupt() {
	current_time_int0 = micros();
	if (FastGPIO::Pin<PIN_RECEIVER>::isInputHigh()) {
		upflank_time0 = current_time_int0;
	} else {
		if (current_time_int0 > upflank_time0) {
			raw_inputs = current_time_int0 - upflank_time0;
		}
	}
}

void timer_handle_interrupts(int timer) {
	if (timer == MOTOR_PWM_TIMER) {
		steering_tick++;
		if (steering_tick == PWM_HZ) {
			steering_tick = 0;
		}
		//LL is clockwise
		//LH is counterclockwise
		//HL is brake (avoid this except for speed = 0
		//HH is open circuit
		if (steering_Speed == 0) {
			cli();
			FastGPIO::Pin<PIN_IN_1>::setOutputHigh();
			FastGPIO::Pin<PIN_IN_2>::setOutputLow();
			sei();
		} else {
			//calculate percent of active duty cycle
			int dutyPCT = 0;
			int absSpeed = abs(steering_Speed);
			bool clockwise = steering_Speed < 0;
//			if (absSpeed >= PWM_RAMP) {
				dutyPCT = 25;
//			} else {
//				dutyPCT = steering_Speed * 100 / PWM_RAMP;
//			}
			//find out how often ticks are high
			//1 = 100
			//2 = 50
			//3 = 33
			//4 = 25
			int moduloCounter = 0;
			if (dutyPCT > 50) {
				moduloCounter = 1;
			} else if (dutyPCT > 33) {
				moduloCounter = 2;
			} else if (dutyPCT > 25) {
				moduloCounter = 3;
			} else {
				moduloCounter = 4;
			}
			cli();
			bool enabled = steering_tick % moduloCounter == 0;
			if (enabled) {
				if (clockwise) {
					FastGPIO::Pin<PIN_IN_1>::setOutputLow();
					FastGPIO::Pin<PIN_IN_2>::setOutputLow();
				} else {
					FastGPIO::Pin<PIN_IN_1>::setOutputLow();
					FastGPIO::Pin<PIN_IN_2>::setOutputHigh();
				}
			} else {
				FastGPIO::Pin<PIN_IN_1>::setOutputHigh();
				FastGPIO::Pin<PIN_IN_2>::setOutputHigh();
				// open circuit
			}
			sei();
		}

	}
}

void setup() {
	Serial.begin(115200);

	Serial.println("init LED");
	leds[0].red = 0;
	leds[0].green = 32;
	leds[0].blue = 0;

	Serial.println("init normal Pins");
	pinMode(PIN_CALIBRATE_SWITCH, INPUT_PULLUP);
	pinMode(PIN_FAILURE, INPUT);
	pinMode(PIN_SERVO_POSITION, INPUT);

	Serial.println("init rc interrupt handler");
	attachPCINT(digitalPinToPCINT(PIN_RECEIVER), handleServoInterrupt, CHANGE);

	Serial.println("init motor controller");
	cli();
	FastGPIO::Pin<PIN_IN_1>::setOutput(HIGH);
	FastGPIO::Pin<PIN_IN_2>::setOutput(LOW);
	sei();

	Serial.println("init motor pwm control");
	timer_init_ISR_100Hz(MOTOR_PWM_TIMER);

	Serial.println("init i2c");
	Wire.begin(1);                // join i2c bus with address #8
	Wire.onRequest(requestEvent); // register event

	Serial.println("init operationmode");
	Serial.print("reading calibration min ");
	min = eepromReadInt(0);
	Serial.print(min);
	Serial.print(" max ");
	max = eepromReadInt(2);
	Serial.println(max);
	curPos = analogRead(PIN_SERVO_POSITION);
	middleSteering();
	Serial.println(targetPos);
}

void middleSteering() {
	targetPos = min + (max - min) / 2;
}

void processCalibrate() {
	Serial.print(FastGPIO::Pin<PIN_CALIBRATE_SWITCH>::isInputHigh());
	if (!FastGPIO::Pin<PIN_CALIBRATE_SWITCH>::isInputHigh()) {
		calibrateCount++;
		if (calibrateCount == CALIBRATE_ANTI_BOUNCE_COUNT) {
			updateLED(0, false);
			calibrate();
			calibrateCount = 0;
		}
	} else {
		calibrateCount = 0;
	}
}

void updateLED(float delta, bool error) {
	if (FastGPIO::Pin<PIN_FAILURE>::isInputHigh()) {
		Serial.println("error mc");
		out COLOR_ERROR_MC;
		return;
	}
	if (error) {
			Serial.println("error check signal");
			out COLOR_ERROR;
			return;
		}
	if (min + 200 > max) {
		out COLOR_ERROR_CALIBRATE;
		Serial.println("error calibrate required");
		return;
	}
	if (calibrateCount == CALIBRATE_ANTI_BOUNCE_COUNT) {
		out COLOR_CALIBRATE_EXECUTE;
		return;
	}
	if (calibrateCount > 0) {
		out COLOR_CALIBRATE_HOLD;
		return;
	}
	if (delta > DEADBAND) {
		out COLOR_EXTEND;
		return;
	}
	if (delta < -DEADBAND) {
		out COLOR_RETRACT;
		return;
	}
	out COLOR_DIM_GREEN;
}

void loop() {
	delay(5);
	diff = micros() - current_time_int0;
	int sample = analogRead(PIN_SERVO_POSITION);
	long int potiMappedRawInput = 0;
	if (sample >= min && sample <= max && raw_inputs > 800
			&& raw_inputs < 2200) {
		filterdSensor.add(sample);
		curPos = filterdSensor.getMedian();
		potiMappedRawInput = map(raw_inputs, 1000, 2000, min, max);
		filterdInput.add(potiMappedRawInput);
		targetPos = filterdInput.getMedian();
		Serial.print(curPos);
		Serial.print(" ");
		Serial.println(targetPos);
	} else {
		curPos = targetPos;
	}
	bool error = (diff > 250000 || raw_inputs < 800);

	if (error) {
		middleSteering();
	}
	float delta = antiFlickeringAndMovement();
	steering_Speed = delta;
	processCalibrate();
	updateLED(delta, error);
}

float antiFlickeringAndMovement() {
	float delta = targetPos - curPos;
	if (delta < - DEADBAND || delta > DEADBAND) {
		return delta;
	} else {
		return 0;
	}
}
