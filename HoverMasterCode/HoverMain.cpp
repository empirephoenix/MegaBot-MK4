#include <Arduino.h>
#include <FastGPIO.h>
#define APA102_USE_FAST_GPIO
#include "PPMReader.h"
#include "RunningMedian.h"
#include <APA102.h>
#include <avr/wdt.h>

#define PIN_PPM_IN 2
#define CHANNEL_COUNT 6

#define PIN_LED_1 12
#define PIN_LED_2 11
#define LED_COUNT 150
#define LED_POWER 255

#define PIN_HOVER_RELAY 3

#define PIN_PPM_OUT 4
#define CHANNEL_NUMBER 6  //set the number of chanels
#define CHANNEL_DEFAULT_VALUE 1500  //set the default servo value
#define FRAME_LENGTH 22500  //set the PPM frame length in microseconds (1ms = 1000µs)
#define PULSE_LENGTH 300  //set the pulse length
#define onState 1  //set polarity of the pulses: 1 is positive, 0 is negative

PPMReader ppmReader(PIN_PPM_IN, 0, false);
volatile int ppm[CHANNEL_NUMBER];
volatile boolean tick;
APA102<PIN_LED_1, PIN_LED_2> ledStrip;
rgb_color leds[LED_COUNT];

RunningMedian steeringMedian = RunningMedian(10);
RunningMedian throttleMedian = RunningMedian(10);
RunningMedian reverseMedian = RunningMedian(10);
RunningMedian speedLimitMedian = RunningMedian(10);
RunningMedian emergencyOffMedian = RunningMedian(10);
RunningMedian lightModeMedian = RunningMedian(10);
RunningMedian lightLevelMedian = RunningMedian(10);

void out(int led, byte r, byte g, byte b) {
	leds[led].red = r;
	leds[led].green = g;
	leds[led].blue = b;
}

/* Converts a color from HSV to RGB.
 * h is hue, as a number between 0 and 360.
 * s is the saturation, as a number between 0 and 255.
 * v is the value, as a number between 0 and 255. */
rgb_color hsvToRgb(uint16_t h, uint8_t s, uint8_t v) {
	uint8_t f = (h % 60) * 255 / 60;
	uint8_t p = (255 - s) * (uint16_t) v / 255;
	uint8_t q = (255 - f * (uint16_t) s / 255) * (uint16_t) v / 255;
	uint8_t t = (255 - (255 - f) * (uint16_t) s / 255) * (uint16_t) v / 255;
	uint8_t r = 0, g = 0, b = 0;
	switch ((h / 60) % 6) {
	case 0:
		r = v;
		g = t;
		b = p;
		break;
	case 1:
		r = q;
		g = v;
		b = p;
		break;
	case 2:
		r = p;
		g = v;
		b = t;
		break;
	case 3:
		r = p;
		g = q;
		b = v;
		break;
	case 4:
		r = t;
		g = p;
		b = v;
		break;
	case 5:
		r = v;
		g = p;
		b = q;
		break;
	}
	return rgb_color(r, g, b);
}

void setup() {
	Serial.begin(115200);

	wdt_enable(WDTO_120MS);
	Serial.println("init LED");
	leds[0].red = 0;
	leds[0].green = 32;
	leds[0].blue = 0;

	pinMode(PIN_HOVER_RELAY, OUTPUT);
	pinMode(PIN_LED_1, OUTPUT);
	pinMode(PIN_LED_2, OUTPUT);
//
//	  //initiallize default ppm values
	for (int i = 0; i < CHANNEL_NUMBER; i++) {
		ppm[i] = CHANNEL_DEFAULT_VALUE;
	}

	pinMode(PIN_PPM_OUT, OUTPUT);
	digitalWrite(PIN_PPM_OUT, !onState); //set the PPM signal pin to the default state (off)

	cli();
	TCCR1A = 0; // set entire TCCR1 register to 0
	TCCR1B = 0;

	OCR1A = 100;  // compare match register, change this
	TCCR1B |= (1 << WGM12);  // turn on CTC mode
	TCCR1B |= (1 << CS11);  // 8 prescaler: 0,5 microseconds at 16mhz
	TIMSK1 |= (1 << OCIE1A); // enable timer compare interrupt
	sei();
}

void timer_handle_interrupts(int timer) {
	if (timer == 2) {
		tick = !tick;
	}
}

void doLight(int mode, bool reverse) {
	if (mode == 1) {
		uint8_t time = millis() >> 4;
		Pololu::rgb_color color = hsvToRgb((uint32_t) time * 359 / 256, 255,
				255);
		for (int i = 0; i < LED_COUNT; i++) {
			out(i, color.red, color.green, color.blue);
		}
	} else if (mode == 2) {
		int speedFactor = map(throttleMedian.getMedian(), 1000, 2000, -250,
				250);
		int steeringFactor = abs(
				map(steeringMedian.getMedian(), 1000, 2000, -250, 250));
		for (int i = 0; i < LED_COUNT; i++) {
			if (speedFactor < 0) {
				out(i, -speedFactor, 0 , steeringFactor);
			} else if (reverse) {
				out(i, 0 , speedFactor, steeringFactor);
			} else {
				out(i, speedFactor, speedFactor, steeringFactor);
			}

		}
	} else {
		for (int i = 0; i < LED_COUNT; i++) {
			out(i, 0, 0, 0);
		}
	}

}

void doParkLight() {
	for (int i = 0; i < LED_COUNT; i++) {
		if (tick) {
			out(i, 0, 0, 0);
		} else {
			out(i, 255, 255, 0);
		}
	}
}

void doNoReceiverLight() {
	for (int i = 0; i < LED_COUNT; i++) {
		if (tick) {
			out(i, 0, 0, 0);
		} else {
			out(i, 255, 0, 0);
		}
	}
}

void process() {
	float steering = steeringMedian.getMedian();
	float throttle = map(throttleMedian.getMedian(), 1000, 2000, 0, 1000);
	bool reverse = reverseMedian.getMedian() < 1700;
	float speedLimit = speedLimitMedian.getMedian();
	bool powerOn = emergencyOffMedian.getMedian() < 1700;
	int lightMode = round((lightModeMedian.getMedian() - 1000) / 150);

	Serial.print(" steering ");
	Serial.print(steering);
	Serial.print(" throttle ");
	Serial.print(throttle);
	Serial.print(" reverse ");
	Serial.print(reverse);
	Serial.print(" speedLimit ");
	Serial.print(speedLimit);
	Serial.print(" emergencyOff ");
	Serial.print(powerOn);
	Serial.print(" lightmode ");
	Serial.print(lightMode);
	Serial.println();

	digitalWrite(PIN_HOVER_RELAY, powerOn);
	if (!powerOn) {
		doParkLight();
	} else {
		doLight(lightMode, reverse);
	}
}

void loop() {
	wdt_reset();
	tick = millis() / 250 % 2;

	if (ppmReader.isReceiving()) {
		out(255, 0, 0, 0);
		steeringMedian.add(ppmReader.get(0));
		throttleMedian.add(ppmReader.get(1));
		reverseMedian.add(ppmReader.get(2));
		speedLimitMedian.add(ppmReader.get(3));
		emergencyOffMedian.add(ppmReader.get(4));
		lightModeMedian.add(ppmReader.get(5));
		lightLevelMedian.add(ppmReader.get(6));
		process();
	} else {
		doNoReceiverLight();
		ppm[0] = 1500;
		ppm[1] = 1500;
		ppm[2] = 1500;
		ppm[3] = 1500;
		ppm[4] = 1500;
		lightLevelMedian.add(1250);
	}
	int lightLevel = round((lightLevelMedian.getMedian() - 1000));
	int lightLevel8Bit = map(lightLevel, 0, 1000, 1, 31);
	ledStrip.write(leds, LED_COUNT, lightLevel8Bit);
}

ISR(TIMER1_COMPA_vect) {  //leave this alone
	static boolean state = true;

	TCNT1 = 0;

	if (state) {  //start pulse
		digitalWrite(PIN_PPM_OUT, onState);
		OCR1A = PULSE_LENGTH * 2;
		state = false;
	} else {  //end pulse and calculate when to start the next pulse
		static byte cur_chan_numb;
		static unsigned int calc_rest;

		digitalWrite(PIN_PPM_OUT, !onState);
		state = true;

		if (cur_chan_numb >= CHANNEL_NUMBER) {
			cur_chan_numb = 0;
			calc_rest = calc_rest + PULSE_LENGTH;  //
			OCR1A = (FRAME_LENGTH - calc_rest) * 2;
			calc_rest = 0;
		} else {
			OCR1A = (ppm[cur_chan_numb] - PULSE_LENGTH) * 2;
			calc_rest = calc_rest + ppm[cur_chan_numb];
			cur_chan_numb++;
		}
	}
}
