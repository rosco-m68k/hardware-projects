/*
 * vim: set et ts=4 sw=4
 *------------------------------------------------------------
 *                                  ___ ___ _
 *  ___ ___ ___ ___ ___       _____|  _| . | |_
 * |  _| . |_ -|  _| . |     |     | . | . | '_|
 * |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
 *                     |_____|
 * ------------------------------------------------------------
 * Copyright (c) 2021 Ross Bamford
 * MIT License
 *
 * Simple PCX loader demo for Xosera
 * ------------------------------------------------------------
 */

#include "xosera_m68k_api.h"
#include "pcx.h"
#include "dprint.h"

//volatile xreg_t * const xosera_ptr = (volatile xreg_t * const)0xf80060;

extern void *_image_start;
extern void *_image_end;

void kmain() {
    uint32_t buf_start = (uint32_t)&_image_start;
    uint32_t buf_size  = (uint32_t)&_image_end - (uint32_t)&_image_start;
    uint8_t *buf = (uint8_t*)buf_start;

    dprintf("Image is at 0x%08x (%d bytes)\n", buf_start, buf_size);

    dprintf("\nxosera_init(0)...");
    bool success = xosera_init(0);
    dprintf("%s\n", success ? "succeeded" : "FAILED" /*, xv_reg_getw(vidwidth), xv_reg_getw(vidheight)*/);

    xreg_setw(PA_GFX_CTRL, 0x0075);
    xreg_setw(PA_LINE_LEN, 160);

    show_pcx(buf_size, buf);

    while (true) {}
}

