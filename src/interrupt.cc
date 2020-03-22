#include "interrupt.h"

Interrupt* Interrupt::instance = 0;
Ctimer* Interrupt::ctimer = 0;
Pin* Interrupt::pinRain = 0;
Pin* Interrupt::pinWindSpd = 0;

// counters
uint16_t Interrupt::counterRain = 0;
uint16_t Interrupt::counterWindSpd = 0;


// debounce milliseconds
uint32_t Interrupt::lastMillisRain = 0;
uint32_t Interrupt::lastMillisWindSpd = 0;

// store pins last state
uint8_t Interrupt::pinHistory = 0xFF;

Interrupt::Interrupt(){
	// pin change interrupt enable
	GIMSK |= (1 << PCIE);
	// pin change interrupt enabled for RAIN and WIND_SPD
	PCMSK |= ((1 << PCINT0) | (1 << PCINT1)); 
	// enable interrupts
	sei();
}

void Interrupt::handleInterrupt()
{
	uint32_t millis = ctimer->millis();
	uint8_t changedbits = PINB ^ pinHistory;
	pinHistory = PINB;

	// rain interrupt
	if(changedbits & (1 << PB0) && millis > lastMillisRain + 50)
	{
		counterRain++;
		lastMillisRain = millis;
	}

	// wind interrupt
	if(changedbits & (1 << PB1) && millis > lastMillisWindSpd + 50)
	{
		counterWindSpd++;
		lastMillisWindSpd = millis;
	}
}

Interrupt* Interrupt::getInterrupt()
{
	if(instance == 0) {
		instance = new Interrupt();
		ctimer = Ctimer::getTimer();
		pinRain = new Pin(&PORTB, &DDRB, &PINB, 0); // rain
		pinWindSpd = new Pin(&PORTB, &DDRB, &PINB, 1); // w_spd
		pinRain->input();
		pinWindSpd->input();
	}
	return instance;
}

uint16_t Interrupt::getRain()
{
	return counterRain;
}

uint16_t Interrupt::getWind()
{
	return counterWindSpd;
}

ISR(PCINT0_vect)
{
	Interrupt::handleInterrupt();
}