#include "ctimer.h"

Ctimer* Ctimer::instance = 0;
uint32_t Ctimer::timer_overflow_count = 0;
uint32_t Ctimer::timer0_millis = 0;
uint8_t Ctimer::timer0_fract = 0;

Ctimer::Ctimer(){
	TCNT1 = 0; // zeroes
	TCCR1 = 0x00; // stop
	// TCCR1 |= (1 << CS12) | (1 << CS11) | (1 << CS10); // 64 prescalar
	TCCR1 |= (1 << CS12) | (1 << CS11); // 32 prescalar
	TIMSK = (1 << TOIE1); // enable overflow interrupt
	
	sei(); // enable ISR
}

void Ctimer::handleOverflow(){
	uint32_t m = timer0_millis;
    uint8_t f = timer0_fract;
 
	m += MILLIS_INC;
    f += FRACT_INC;
    if (f >= FRACT_MAX) {
        f -= FRACT_MAX;
        m += 1;
    }
 
    timer0_fract = f;
    timer0_millis = m;
    timer_overflow_count++;
}

ISR(TIMER1_OVF_vect)
{
	Ctimer::handleOverflow();
}

Ctimer* Ctimer::getTimer(){
	if(instance == 0) {
		instance = new Ctimer();
	}
	return instance;
}

uint32_t Ctimer::millis()
{
	uint32_t m;
	uint8_t oldSREG = SREG;

	cli();
	m = timer0_millis;
	SREG = oldSREG;

	return m;
}

uint32_t Ctimer::micros()
{
	uint32_t micros;
	ATOMIC_BLOCK(ATOMIC_FORCEON) {
		micros = ((timer_overflow_count << 8) + TCNT1) * MICROSECONDS_PER_TICK;
	}	
	return micros;
}


void Ctimer::waitMillis(uint32_t millis)
{
	uint32_t end_time = Ctimer::millis() + millis;
	while(Ctimer::millis() < end_time);
}

void Ctimer::waitMicros(uint32_t micros)
{
	// witchcraft 18 micros less than required
	uint32_t end_time = Ctimer::micros() + micros - 18; 
	while(Ctimer::micros() < end_time) {
		_delay_us(MICROSECONDS_PER_TICK);
	}
}