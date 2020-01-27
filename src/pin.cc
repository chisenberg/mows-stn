#include "pin.h"

Pin::Pin(
	volatile uint8_t* _portAddr,
	volatile uint8_t* _ddrAddr,
	volatile uint8_t* _pinAddr,
	uint8_t _pinNo){
		portAddr = _portAddr;
		ddrAddr = _ddrAddr;
		pinAddr = _pinAddr;
		pinNo = _pinNo;
}

void Pin::output() { *ddrAddr |= (1<<pinNo); }

void Pin::input() {	*ddrAddr &= ~(1<<pinNo); }

void Pin::write(uint8_t v) {
	if(v) *portAddr |= 1 << pinNo;
	else *portAddr &= ~( 1 << pinNo);
}

uint8_t Pin::read() {
	return (*pinAddr >> pinNo) & 1;
}