# Arduino m68k IO Device POC

This is a ridiculously-simple proof-of-concept of using an Arduino Mega 2560 
as an IO device with the rosco_m68k.

Note that, only the Mega is supported - the timing requirements of the project
dictate that direct port access be used. It _could_ be made to work on other 
Arduino models, but work will be required to translate the ports to appropriate
ports for those models.

In this project:

* An Arduino Mega 2560 is connected as an IO device
* It supports a single, byte-sized register, mapped to all even IO space addresses
* The Arduino handles the tri-state data bus and DTACK lines correctly(-enough)
* A simple m68k project is included that reads from this IO device

## Getting started

There are two subdirectories:

* **arduino-ioread** is the Arduino code (as an Eclipse project)
* **m68k-ioread** is the rosco_m68k code

### Hardware set-up

You'll need to build a small circuit to generate the STROBE line. For this 
you'll need:

* 1x 74LS04 (Hex inverter)
* 1x 74LS20 (Dual 4-input NAND) 

Connect three of the inverter inputs to the IOSEL, UDS and AS lines from the 
rosco_m68k. Their outputs should go to three of the inputs to one of the 
NAND gates. The fourth input to this NAND should be the (non-inverted) LDS line
from the board.

The output of the NAND gate should then be connected to the STROBE pin on the 
Arduino (See comments in `arduino-ioread/arduino-ioread.cpp` for Arduino pin 
assignments).

The data bus, DTACK and (optionally) SIGNAL lines can then be connected to the
arduino (again, see the C++ source for pin numbers).

### Arduino set-up

Build the Arduino project with Eclipse (preferred) or it _should_ build with the
Arduino IDE, though I've not tested this.

Flash the Arduino with the code.

### rosco_m68k setup

You will need the libraries from the main `rosco_m68k` project in order to 
build the demo code. Get the project from https://github.com/rosco-m68k/rosco_m68k
if you don't already have it, and follow the instructions at 
https://github.com/rosco-m68k/rosco_m68k/tree/master/code/software/libs
to build the libraries.

You'll obviously need a complete m68k toolchain too,
see https://github.com/rosco-m68k/rosco_m68k/blob/master/code/Toolchain.md
if you don't have that.

You may need to adjust the include and library paths in the `Makefile` before
you can build - the project assumes that the libraries are found at 
`../../../rosco_m68k/code/software/libs`. 

Once that's done, build the binary:

```
cd m68k-ioread
make all
```

You can now upload the binary via the rosco_m68k serial bootloader, and it
should read the byte that's compiled into the Arduino code (0xC0 by default)
and display it back to you.

## Next steps

To really see what's going on, you might want to connect a logic analyzer. 
There's a pulseview setup file included (in the arduino directory) that has 
a suggested setup (for an 8-channel analyzer).

For convenience when using a LA, two additional lines are managed by the 
software:

* rosco_m68k GPIO 1 is toggled when the m68k starts - this is a convenient
  trigger for your LA.
* The Arduino provides a SIGNAL line (on pin 42). This is driven high
  during interrupt processing so you can see when the Arduino is driving
  the bus.
 
