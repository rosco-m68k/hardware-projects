/*
 *------------------------------------------------------------
 *                                  ___ ___ _   
 *  ___ ___ ___ ___ ___       _____|  _| . | |_ 
 * |  _| . |_ -|  _| . |     |     | . | . | '_|
 * |_| |___|___|___|___|_____|_|_|_|___|___|_,_| 
 *                     |_____|       firmware v1                 
 * ------------------------------------------------------------
 * Copyright (c)2020 Ross Bamford
 * See top-level LICENSE.md for licence information.
 *
 * Arduino rosco_m68k bus IO device prototype.
 * Just acts as a single byte-sized read-only register on the bus.
 * ------------------------------------------------------------
 *
 * Arduino Mega 2560 specific (because that's what I had to hand...).
 *
 * Because of the way IC5 handles DTACK generation for IO devices, timing
 * is extremely important here, particularly the timing of returning the
 * bus to high-Z at the end of the read cycle. Hence this is using direct
 * port access and direct pin change interrupts rather than the (too slow
 * for this case) Arduino library routines.
 *
 * Connections:
 *
 * Arduino Pin          M68k bus
 * -------------------------------------------
 * 22                   D8 (D0)
 * 24                   D9 (D1)
 * 26                   D10 (D2)
 * 28                   D11 (D3)
 * 30                   D12 (D4)
 * 32                   D13 (D5)
 * 34                   D14 (D6)
 * 36                   D15 (D7)
 *
 * 30                   IODTACK(*)
 * 11                   STROBE(**)
 *
 * 42                   SIGNAL(***)
 *
 * (*) In the r0 and r1 boards this isn't broken out to the expansion
 * connector unfortunately due to an oversight, connection must be made
 * directly to pin 9 of IC5.
 *
 * (**)The STROBE line is output from a 74LS20 that takes a few lines
 * from the bus and combines them to a strobe signal:
 *
 * * Negated AS
 * * Negated IOSEL
 * * Negated UDS
 * * LDS
 *
 * (The negated lines are run through a 74LS04).
 *
 * (***) The SIGNAL line isn't necessary - it's just an output that's
 * used to see (in the LA traces) when the main code of ISR starts and
 * finishes. Of course this excludes the interrupt set-up done by the MCU,
 * so should give a reasonable view of when the Arduino is actually driving
 * the m68k bus lines.
 */

#include <Arduino.h>

// This is the byte that will be placed on the bus
#define DATA_BYTE           ((uint8_t)0xC0);

#define DATA_BUS_PORT       PORTA
#define DATA_BUS_DDR        DDRA

#define DTACK_PORT          PORTC
#define DTACK_DDR           DDRC

#define SIGNAL_PORT         PORTL
#define SIGNAL_DDR          DDRL

#define DDR_OUTPUT          0xFF
#define DDR_INPUT           0x0

#define IS_STROBED          PINE & 0x10 != 0

#define TRI_STATE_BUS                               \
    DATA_BUS_PORT = 0;                              \
    DATA_BUS_DDR = 0;

#define TRI_STATE_DTACK                             \
    DTACK_PORT = 0;                                 \
    DTACK_DDR = 0;

#define NEGATE_DTACK                                \
    DTACK_PORT = 0xFF;                              \
    DTACK_DDR = DDR_OUTPUT;

#define ASSERT_DTACK                                \
    DTACK_PORT = 0x0;                               \
    DTACK_DDR = DDR_OUTPUT;

#define SIGNAL_OUT          SIGNAL_DDR = DDR_OUTPUT
#define SIGNAL_HIGH         SIGNAL_PORT = 0xFF
#define SIGNAL_LOW          SIGNAL_PORT = 0x0

#define OUTPUT_BUS(data)                            \
    DATA_BUS_PORT = data;                           \
    DATA_BUS_DDR = DDR_OUTPUT;

ISR(PCINT0_vect) {
    if (IS_STROBED) {
        SIGNAL_HIGH;
        NEGATE_DTACK;
        OUTPUT_BUS(DATA_BYTE);
        ASSERT_DTACK;

        /* Delay here to keep data on bus for the required time */
        __asm__ __volatile__ ("nop;");  /* Each nop adds 62.5ns on 16MHz Arduino */
        __asm__ __volatile__ ("nop;");

        SIGNAL_LOW;
        TRI_STATE_BUS;
        TRI_STATE_DTACK;
    }
}

void setup() {
    TRI_STATE_BUS;
    TRI_STATE_DTACK;

    SIGNAL_OUT;
    SIGNAL_LOW;

    *digitalPinToPCMSK(11) |= bit (digitalPinToPCMSKbit(11));
    PCIFR  |= bit (digitalPinToPCICRbit(11));
    PCICR  |= bit (digitalPinToPCICRbit(11));

    Serial.begin(115200);
    Serial.println("Waiting for strobe...");
}

void loop() {
}
