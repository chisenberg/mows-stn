#ifndef __BATTERY_H_INCLUDED__
#define __BATTERY_H_INCLUDED__

#include <stdint.h>
#include <avr/io.h>
#include "pin.h"
#include "new.h"

class Battery
{
private:
	

public:
	Battery();
	uint8_t readVoltage();
};

#endif // __BATTERY_H_INCLUDED__
