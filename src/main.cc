
#include <inttypes.h>
#include "ctimer.h"
#include "pin.h"
#include "pulse433.h"
#include "dht22.h"
#include "battery.h"
#include "interrupt.h"

// bat = (analog * (3,3/256)) * 1,45

#define MSG_SIZE 9


int main(void)
{
	
	// Pin* pinWindDir = new Pin(&PORTB, &DDRB, &PINB, 2, 0); // w_dir
	Pin* pinRf433 = new Pin(&PORTB, &DDRB, &PINB, 3); // mows_tx
	Pin* pinDht22 = new Pin(&PORTB, &DDRB, &PINB, 4); // mows_dht22

	Ctimer *ctimer = Ctimer::getTimer();
	Interrupt *interrupts = Interrupt::getInterrupt();
	DHT22 *dht22 = new DHT22(pinDht22);
	Battery *battery = new Battery();
	Pulse433 *pulse433 = new Pulse433(pinRf433);

	uint8_t *msg = (uint8_t*) calloc(MSG_SIZE, sizeof(uint8_t));

	while(1) {

		ctimer->waitMillis(5000);
		dht22->read();
		ctimer->waitMillis(500);


		// uin8_t battery
		msg[0] = battery->readVoltage();
		msg[1] = interrupts->getRain() >> 8;
		msg[2] = interrupts->getRain() & 0x00FF;
		msg[3] = dht22->temperature >> 8;
		msg[4] = dht22->temperature & 0x00FF;
		msg[5] = dht22->humidity >> 8;
		msg[6] = dht22->humidity & 0x00FF;
		msg[7] = interrupts->getWind() >> 8;
		msg[8] = interrupts->getWind() & 0x00FF;
		// here goes wind direction in the future
		//  msg[9] = windDirection();

		pulse433->sendMsg(msg, MSG_SIZE);
	}
}