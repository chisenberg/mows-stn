#ifndef __INTERRUPT_H_INCLUDED__
#define __INTERRUPT_H_INCLUDED__

#include <stdint.h>
#include <avr/interrupt.h>
#include "ctimer.h"
#include "pin.h"


class Interrupt
{
public:
	static Interrupt* getInterrupt();
	static void handleInterrupt();
	uint16_t getWind();
	uint16_t getRain();

private:
	Interrupt();
	static Interrupt* instance;
	static Ctimer *ctimer;
	static Pin* pinRain;
	static Pin* pinWindSpd;

	static uint8_t pinHistory;

	static uint16_t counterRain;
	static uint16_t counterWindSpd;

};


#endif // __INTERRUPT_H_INCLUDED__