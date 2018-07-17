#include "battery.h"
// http://www.instructables.com/id/ATTiny-Port-Manipulation-Part-2-AnalogRead/

Battery::Battery() {
    // REFS0 = 0 / REFS1 = 0 (Vcc as voltage reference)
    // MUX[3:0] = 0000 (ADC0 [PB0/RESET] as input channel)
    ADMUX = 0x00;
    // Left Adjust the ADCH and ADCL registers
    ADMUX |= (1 << ADLAR);
    // enables the ADC
    ADCSRA |= (1 << ADEN);
    // 64 prescalar to get 125khz (8mhz / 64)
    ADCSRA |= (1 << ADPS2);
    ADCSRA |= (1 << ADPS1);
}

uint8_t Battery::readVoltage() {
    // start the conversion
	ADCSRA |= (1 << ADSC); 
	// ADSC is cleared when the conversion finishes
    while (ADCSRA & 1 << ADSC);
    // return the most significant bits
    return ADCH;
}