#include "pulse433.h"

Pulse433::Pulse433(Pin *pin){
    ctimer = Ctimer::getTimer();
	this->pin = pin;
    this->pin->output();
}

void Pulse433::sendMsg(uint8_t *data, uint8_t msgSize) {
	// message start / preamble
	for(int i=0; i<3; i++) sendPulse();
	// Send the 4 synch nimbles 11 10 01 00
	sendByte(0xE4);
	// 8 bytes data
	for(uint8_t i=0; i<msgSize; i++) sendByte(data[i]);
	// message end
	sendPulse();
}

void Pulse433::sendPulse(){
	ctimer->waitMicros(420);
	pin->write(1);
	ctimer->waitMicros(1000);
	pin->write(0);
}

void Pulse433::sendByte(uint8_t byte){
	// 200 us 00 nibbble
	// 300 us 01 nibbble
	// 400 us 10 nibbble
	// 500 us 11 nibbble
	for(uint8_t i=0; i<8; i+=2)
	{
		switch ( (byte >> (i+1) & 1) << 1 | (byte >> i & 1) ) {
			case 0x00: ctimer->waitMicros(60); break; // 00
			case 0X01: ctimer->waitMicros(160); break; // 01
			case 0X02: ctimer->waitMicros(260); break; // 10
			case 0X03: ctimer->waitMicros(360); break; // 11
			default: ctimer->waitMicros(0); 
		}

		pin->write(1);
		ctimer->waitMicros(140);
		pin->write(0);
	}
}

uint8_t Pulse433::getCheckSum(uint8_t *data) {
	uint8_t result = 0;
	for(uint8_t i=0; i<7; i++)
		result += data[i];
	return result;
}