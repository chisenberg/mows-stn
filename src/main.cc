
#include <inttypes.h>
#include "ctimer.h"
#include "pulse433.h"
#include "dht22.h"
#include "battery.h"
#include "pin.h"

// bat = (analog * (3,3/256)) * 1,45

int main(void)
{
	Pin* pinDht22 = new Pin(&PORTB, &DDRB, &PINB, 4, 0); // mows_dht22
	Pin* pinRf433 = new Pin(&PORTB, &DDRB, &PINB, 3, 0); // mows_tx

	Ctimer *ctimer = Ctimer::getTimer();
	DHT22 *dht22 = new DHT22(pinDht22);
	Battery *battery = new Battery();
	Pulse433 *pulse433 = new Pulse433(pinRf433);

	uint8_t msg[]={0xFF,0xE0,0xEF,0xE0,0x34,0x56,0x79,0xE0};

	uint8_t msgNumber = 0;

	while(1) {

		ctimer->waitMillis(1000);
				
		// dht22->read();

		// msg[0] = dht22->temperature >> 8;
		// msg[1] = dht22->temperature & 0x00FF;
		// msg[2] = dht22->humidity >> 8;
		// msg[3] = dht22->humidity & 0x00FF;

		msg[0] = msgNumber++;
		msg[1] = battery->readVoltage();

		pulse433->sendMsg(msg);
	}
}
