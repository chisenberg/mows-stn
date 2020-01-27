#ifndef __PIN_H_INCLUDED__
#define __PIN_H_INCLUDED__

// for uint_t types
#include <stdint.h>
#include <avr/io.h>

class Pin
{
private:
	uint8_t pinNo;
	volatile uint8_t* portAddr;
	volatile uint8_t* ddrAddr;
	volatile uint8_t* pinAddr;

public:
	// constructor
	Pin(
		volatile uint8_t* _portAddr,
		volatile uint8_t* _ddrAddr,
		volatile uint8_t* _pinAddr,
		uint8_t _pinNo);

	void output();
	void input();
	void write(uint8_t);
	uint8_t read();
};

#endif // __PIN_H_INCLUDED__
