#include <Arduino.h>
#include "PPMReader.h"
#include <APA102.h>

#define PIN_PPM_IN 2
#define CHANNEL_COUNT 6

#define PIN_LED_1 12
#define PIN_LED_2 11
#define LED_COUNT 1
#define LED_POWER 255

#define PIN_HOVER_RELAY 8

#define PIN_PPM_OUT 3
#define CHANNEL_NUMBER 5  //set the number of chanels
#define CHANNEL_DEFAULT_VALUE 1500  //set the default servo value
#define FRAME_LENGTH 22500  //set the PPM frame length in microseconds (1ms = 1000µs)
#define PULSE_LENGTH 300  //set the pulse length
#define onState 1  //set polarity of the pulses: 1 is positive, 0 is negative

PPMReader ppmReader(PIN_PPM_IN, 0, false);
volatile int ppm[CHANNEL_NUMBER];
APA102<PIN_LED_1, PIN_LED_2> ledStrip;
rgb_color leds[1];

void out(int led, byte r, byte g, byte b) {
	leds[led].red = r;
	leds[led].green = g;
	leds[led].blue = b;
}

void setup() {
	Serial.begin(115200);

	Serial.println("init LED");
	leds[0].red = 0;
	leds[0].green = 32;
	leds[0].blue = 0;


	pinMode(PIN_HOVER_RELAY, OUTPUT);
	pinMode(PIN_LED_1, OUTPUT);
	pinMode(PIN_LED_2, OUTPUT);

	  //initiallize default ppm values
	  for(int i=0; i<CHANNEL_NUMBER; i++){
	      ppm[i]= CHANNEL_DEFAULT_VALUE;
	  }

	  pinMode(PIN_PPM_OUT, OUTPUT);
	  digitalWrite(PIN_PPM_OUT, !onState);  //set the PPM signal pin to the default state (off)

	  cli();
	  TCCR1A = 0; // set entire TCCR1 register to 0
	  TCCR1B = 0;

	  OCR1A = 100;  // compare match register, change this
	  TCCR1B |= (1 << WGM12);  // turn on CTC mode
	  TCCR1B |= (1 << CS11);  // 8 prescaler: 0,5 microseconds at 16mhz
	  TIMSK1 |= (1 << OCIE1A); // enable timer compare interrupt
	  sei();
}

void doLight(int mode){

}

void loop() {
	int steering = 0;
	float throttle = 0;
	int reverse = 0;
	int speedLimit = 0;
	int emergencyOff = 0;
	float speedModifier = 0.1;

	if(ppmReader.isReceiving()){
		steering = ppmReader.get(0);
		throttle = map(ppmReader.get(1),1000,2000,-1000,1000);
		reverse = ppmReader.get(2);
		speedLimit = ppmReader.get(3);
		emergencyOff = ppmReader.get(4);
		int lightMode = ppmReader.get(4);
		doLight(lightMode);
	} else {
		emergencyOff = 1000;
		out(0, 255,0,0);
		//failsave
	}
	throttle = speedModifier * throttle;
	throttle = map(throttle,-1000,1000,1000,2000);

	ppm[0] = throttle;
	ppm[1] = throttle;
	ppm[2] = throttle;
	ppm[3] = throttle;
	ppm[4] = steering;

	//check if relay needs to be switched for on/off


	//convert throttle and steering for hovers
	ledStrip.write(leds, LED_COUNT, LED_POWER);
}

ISR(TIMER1_COMPA_vect){  //leave this alone
  static boolean state = true;

  TCNT1 = 0;

  if (state) {  //start pulse
    digitalWrite(PIN_PPM_OUT, onState);
    OCR1A = PULSE_LENGTH * 2;
    state = false;
  } else{  //end pulse and calculate when to start the next pulse
    static byte cur_chan_numb;
    static unsigned int calc_rest;

    digitalWrite(PIN_PPM_OUT, !onState);
    state = true;

    if(cur_chan_numb >= CHANNEL_NUMBER){
      cur_chan_numb = 0;
      calc_rest = calc_rest + PULSE_LENGTH;//
      OCR1A = (FRAME_LENGTH - calc_rest) * 2;
      calc_rest = 0;
    }
    else{
      OCR1A = (ppm[cur_chan_numb] - PULSE_LENGTH) * 2;
      calc_rest = calc_rest + ppm[cur_chan_numb];
      cur_chan_numb++;
    }
  }
}
