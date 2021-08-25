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
 * Debug program to print some PCX metrics on your host machine
 * ------------------------------------------------------------
 */

#include <stdio.h>
#include "pcx.h"

static const char *modes[] = { "Unknown", "Mono/Color", "Grayscale" };

int main(int argc, const char** argv) {
    if (argc != 2) {
        printf("Usage: pcx <filename.pcx>\n");
    } else {
        FILE *f = fopen(argv[1], "rb");

        if (!f) {
            printf("Failed to open '%s'\n", argv[1]);
        } else {
            PCXHeader hdr;

            if (fread(&hdr, sizeof(PCXHeader), 1, f) == 1) {
                printf("Read '%s' okay\n\n", argv[1]);
                printf("Header      : 0x%02x\n", hdr.header);
                printf("Version     : 0x%02x\n", hdr.version);
                printf("Encoding    : 0x%02x\n", hdr.encoding);
                printf("BPP         : 0x%02x\n", hdr.bpp);
                printf("Plane count : 0x%02x\n", hdr.num_planes);
                printf("Mode        : %s\n", modes[hdr.palette_mode]);
                printf("Min X       : %d\n", hdr.min_x);
                printf("Min Y       : %d\n", hdr.min_y);
                printf("Max X       : %d\n", hdr.max_x);
                printf("Max Y       : %d\n", hdr.max_y);
                printf("Dimensions  : %dx%d\n", 
                        hdr.max_x - hdr.min_x + 1, 
                        hdr.max_y - hdr.min_y + 1);
                printf("H DPI       : %d\n", hdr.h_dpi);
                printf("V DPI       : %d\n", hdr.v_dpi);
                printf("\n");
            } else {
                printf("Read failed\n");
            }

            fclose(f);
        }
    }
}



