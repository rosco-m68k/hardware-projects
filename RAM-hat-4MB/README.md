Copyright (c) 2022 HeathenUK (and Contributors)
Licensed under the CERN Open Hardware Licence v1.2
See LICENCE.hardware.txt for details

This is a 4MB SRAM expansion for the rosco_m68k, kindly contributed
by HeathenUK. See:

https://discord.com/channels/698525682199822367/711358112904380476/1020396126261743756

The expansion is done as a hat, rather than as a bus expansion,
meaning you can use this along with other bus expansions without
having a bus board.

In order to use this, you'll need to reprogram your rosco_m68k 
IC2 (address decoder) with the JED file found under `code/pld`.

If you are using a TL866II+ and `minipro`, you should be able to
insert the chip and run `burn.sh` to reprogram the IC.

