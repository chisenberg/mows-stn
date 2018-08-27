#ifndef __CTIMER_H_INCLUDED__
#define __CTIMER_H_INCLUDED__

// for uint_t types
#include <stdint.h>
#include <stdio.h> //sprintf
#include <avr/interrupt.h>
#include <util/atomic.h> // para atomic
#include <util/delay.h>
#include "new.h"

// https://ucexperiment.wordpress.com/2012/03/16/examination-of-the-arduino-millis-function/
#define TIMER1_PRESCALAR 32
#define clockCyclesPerMicrosecond() ( F_CPU / 1000000L )
#define clockCyclesToMicroseconds(a) ( ((a) * 1000L) / (F_CPU / 1000L) )
#define MICROSECONDS_PER_TICK ( TIMER1_PRESCALAR / clockCyclesPerMicrosecond() )
#define MICROSECONDS_PER_TIMER1_OVERFLOW ( clockCyclesToMicroseconds( TIMER1_PRESCALAR * 256 ) )
#define MILLIS_INC (MICROSECONDS_PER_TIMER1_OVERFLOW / 1000) // 1.024 = 1
#define FRACT_INC ((MICROSECONDS_PER_TIMER1_OVERFLOW % 1000) >> 3) // (24 >> 3) = 3
#define FRACT_MAX (1000 >> 3) // (1000 >> 3) 125

class Ctimer
{

public:
	static void handleOverflow();
	static Ctimer* getTimer();
	uint32_t millis();
	uint32_t micros();
	void waitMillis(uint32_t);
	void waitMicros(uint32_t);

private:
	Ctimer();
	static Ctimer* instance;
	static uint32_t timer_overflow_count;
	static uint32_t timer0_millis;
	static uint8_t timer0_fract;
};

#endif // __CTIMER_H_INCLUDED__
