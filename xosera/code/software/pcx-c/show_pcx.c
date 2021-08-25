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
 * Simple PCX loader for Xosera
 * ------------------------------------------------------------
 */

#include <stdint.h>
#include <stdbool.h>

#include "xosera_api.h"
#include "pcx.h"
#include "dprint.h"

static const char *modes[] = { "Unknown", "Mono/Color", "Grayscale" };

static uint16_t swap(uint16_t be) {
    return ((be & 0xFF00) >> 8) | ((be & 0x00FF) << 8); 
}

static bool load_palette(uint8_t *buf) {
    if (*buf++ != 0x0C) {
        dprintf("ERROR: Palette indicator not present");
        return false;
    } else {
        xv_setw(aux_addr, XV_AUX_COLORMEM);

        for (int i = 0; i < 256; i++) {
            uint16_t entry = 0;

            entry |= ((*buf++ & 0xF0) << 4);
            entry |= (*buf++ & 0xF0);
            entry |= ((*buf++ & 0xF0) >> 4);

#ifdef TRACE_DEBUG
            dprintf("Palette %3d: 0x%04x\n", i, entry);
#endif

            xv_setw(aux_data, entry);
        }

        return true;
    }
}

static void draw(uint8_t pix) {
    static bool high = false;
    static uint16_t save_pix = 0;

    if (high) {
        // send to Xosera
        xv_setw(data, save_pix << 8 | pix);
        high = false;
    } else {
        save_pix = pix;
        high = true;
    }
}

static bool load_image(uint32_t buf_size, uint8_t *buf) {
    xv_setw(wr_addr, 0);

    for (uint32_t i = 0; i < buf_size; i++) {
        uint8_t pix = buf[i];

        if ((pix & 0xc0) == 0xc0) {
            // Do a run
            uint8_t len = pix & 0x3f;
            pix = buf[++i];
            
            for (uint8_t j = 0; j < len; j++) {
                draw(pix);
            }
        } else {
            // Single pixel
            draw(pix);
        }
    }

    return true;
}

bool show_pcx(uint32_t buf_size, uint8_t *buf) {
    if (buf_size < 128) {
        dprintf("ERROR: Buffer is too small\n");
        return false;
    } else {
        PCXHeader *hdr = (PCXHeader*)buf;

        uint16_t width  = swap(hdr->max_x) - swap(hdr->min_x) + 1;
        uint16_t height = swap(hdr->max_y) - swap(hdr->min_y) + 1;  

        // *very* basic checks
        if (width != 320 || height != 240 || hdr->bpp != 8 || hdr->num_planes != 1 || hdr->encoding != 1) {
            dprintf("ERROR: Bad image\n");
            return false;
        }

        dprintf("Header      : 0x%02x\n", hdr->header);
        dprintf("Version     : 0x%02x\n", hdr->version);
        dprintf("Encoding    : 0x%02x\n", hdr->encoding);
        dprintf("BPP         : 0x%02x\n", hdr->bpp);
        dprintf("Plane count : 0x%02x\n", hdr->num_planes);
        dprintf("Mode        : %s\n", modes[swap(hdr->palette_mode)]);
        dprintf("Min X       : %d\n", swap(hdr->min_x));
        dprintf("Min Y       : %d\n", swap(hdr->min_y));
        dprintf("Max X       : %d\n", swap(hdr->max_x));
        dprintf("Max Y       : %d\n", swap(hdr->max_y));
        dprintf("Dimensions  : %dx%d\n", width, height);
        dprintf("H DPI       : %d\n", swap(hdr->h_dpi));
        dprintf("V DPI       : %d\n", swap(hdr->v_dpi));
        dprintf("\n");

        
        if (!load_palette(buf + (buf_size - 769))) {
            dprintf("ERROR: Palette load failed\n");
            return false;
        }

        if (!load_image(buf_size - 769 - 128, buf + 128)) {
            dprintf("ERROR: Image load failed\n");
            return false;
        }

        return true;
    }
}


