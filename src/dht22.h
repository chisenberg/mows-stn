#ifndef __DHT22_H_INCLUDED__
#define __DHT22_H_INCLUDED__

#include <stdint.h>
#include <avr/io.h>
#include "new.h"
#include "pin.h"
#include "ctimer.h"

class DHT22
{
public:
	DHT22(Pin*);
    uint8_t read();
    uint16_t temperature;
    uint16_t humidity;
private:
   Pin *pin;
   Ctimer *ctimer;
};

#endif // __DHT22_H_INCLUDED__
