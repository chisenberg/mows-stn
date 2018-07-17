#include "dht22.h"

DHT22::DHT22(Pin *pin){
	this->pin = pin;
    pin->output();
    ctimer = Ctimer::getTimer();
}

uint8_t DHT22::read(){
    // buffer
	uint8_t bytes[5];
	uint8_t cnt = 7;
	uint8_t idx = 0;
    // timeout
    uint32_t timeout;

	// empty buffer
	for (int i=0; i< 5; i++) bytes[i] = 0x00;

	// request sample
	pin->output();
	pin->write(0);
	ctimer->waitMillis(1);
	pin->write(1);
	ctimer->waitMicros(40);
	pin->input();

	// 10 ms timeout
	timeout = ctimer->millis() + 10;

    // Dht22 preamble +/- 160 us
	while(pin->read() == 0)
		if (ctimer->millis() > timeout) return -2;
	while(pin->read() == 1)
		if (ctimer->millis() > timeout) return -2;

	// read 5 bytes
	uint32_t t;
	for (int i=0; i<40; i++)
	{
		while(pin->read() == 0)
		    if (ctimer->millis() > timeout) return -2;

		t = ctimer->micros();

		while(pin->read() == 1)
		   if (ctimer->millis() > timeout) return -2;

		if ((ctimer->micros() - t) > 60) bytes[idx] |= (1 << cnt);

		if (cnt == 0)
		{
			cnt = 7;
			idx++;
		}
		else cnt--;
	}

    // checksum
    uint8_t sum = bytes[0] + bytes[1] + bytes[2] + bytes[3];
    if (bytes[4] == sum) {
        
        // negative temperature
        // uint8_t sign = 1;
        // if (bytes[2] & 0x80) 
        // {
        //     bytes[2] = bytes[2] & 0x7F;
        //     sign = -1;
        // }

        humidity = (bytes[0] << 8) | bytes[1];
        temperature = (bytes[2] << 8) | bytes[3];
    } else {
        return -1;
    }

	return 0;
}
