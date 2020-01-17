
#include <inttypes.h>
#include "ctimer.h"
#include "pin.h"
#include "pulse433.h"
#include "dht22.h"
#include "battery.h"

// bat = (analog * (3,3/256)) * 1,45

int main(void)
{
	Pin* pinDht22 = new Pin(&PORTB, &DDRB, &PINB, 4, 0); // mows_dht22
	Pin* pinRf433 = new Pin(&PORTB, &DDRB, &PINB, 3, 0); // mows_tx

	Ctimer *ctimer = Ctimer::getTimer();
	DHT22 *dht22 = new DHT22(pinDht22);
	Battery *battery = new Battery();
	Pulse433 *pulse433 = new Pulse433(pinRf433);

	uint8_t *msg = (uint8_t*) calloc(8, sizeof(uint8_t));

	uint8_t msgNumber = 0;


	while(1) {

		ctimer->waitMillis(3000);				
		dht22->read();
		ctimer->waitMillis(500);

		msg[0] = msgNumber++;
		msg[1] = battery->readVoltage();

		msg[2] = dht22->temperature >> 8;
		msg[3] = dht22->temperature & 0x00FF;
		msg[4] = dht22->humidity >> 8;
		msg[5] = dht22->humidity & 0x00FF;

		pulse433->sendMsg(msg);
	}
}
