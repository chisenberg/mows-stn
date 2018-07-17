#ifndef __PULSE433_H_INCLUDED__
#define __PULSE433_H_INCLUDED__

// for uint_t types
#include <stdint.h>
#include "pin.h"
#include "ctimer.h"

class Pulse433
{

private:
	uint8_t isTx;
	Pin *pin;

    Ctimer *ctimer;

	// data control
	uint8_t data_n;
	uint8_t data_bit_n;
	uint8_t data[8];

public:
	Pulse433(Pin*);
	void sendMsg(uint8_t *);
	void sendPreamble();
	void sendByte(uint8_t byte);
    uint8_t getCheckSum(uint8_t *data);
};

#endif // __PULSE433_H_INCLUDED__