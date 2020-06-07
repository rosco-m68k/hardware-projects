/*
 * Copyright (c) 2020 rosco_m68k
 */

#include <stdint.h>
#include <stdbool.h>
#include <machine.h>

extern void INIT_SERIAL_HANDLERS();
extern void SENDCHAR(uint8_t c);
extern uint8_t RECVCHAR();

#ifdef WITHKERMIT
typedef void (*KMain)();

extern int receive_kernel();

uint8_t *kernel_load_ptr = (uint8_t)0x40000;
KMain loaded_kmain = (KMain)0x40000;
#endif

void new_printf(const char *str) {
    while (*str) {
        SENDCHAR(*str++);
    }
}

void kmain() {
    INIT_SERIAL_HANDLERS();

#ifdef WITHKERMIT
    new_printf("Waiting to receive via Kermit...\r\n");

    while (!receive_kernel()) {
        new_printf("\x1b[1;31mSEVERE\x1b[0m: Receive failed; Ready for retry...\r\n");
    }

    mcBusywait(100000);
    new_printf("Receive _seems_ okay...\r\n");

    loaded_kmain();
#endif
   
    new_printf("Going into echo loop...\r\n");

    while (true) { 
        uint8_t c = RECVCHAR();

        if (c != 0) {
            SENDCHAR(c);
        }
    }
    mcHalt();

}

