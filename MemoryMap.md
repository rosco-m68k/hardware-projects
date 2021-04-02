# rosco_m68k Memory Map & IRQs
## For all revision 1 and 1.2 boards

This document describes the memory map for the rosco_m68k.
Here you can find details of reserved RAM areas, ROM and
a map of IO space.

**Note for hardware builders**

Much of IO space is currently unmapped, and is allocated on a 
_first-come, first-served_ basis. If you are building a hardware
expansion that requires IO, simply find an appropriate area in
IO space and edit this document to reserve your required space,
then submit a pull-request with your changes.

## RAM space

RAM starts at $0 and extends to $F7FFFF (15.5MB total). 
Of this, $0 to $FFFFF is the 1MB on-board RAM, while the rest 
maps to the expansion space (the address decoder will assert 
EXPSEL for this region).

At present, there is no specific zone allocated as DMA addressable,
though this is likely to change in the future. Current thinking is
that only the first megabyte (or perhaps a region thereof) will 
be usable with DMA. However, this may well change depending on the
DMAC that ends up being used.

| Start   | Size (hex) | Size (dec) | Description                     |
|--------:|-----------:|-----------:|:--------------------------------|
|      $0 |   $1000    |    4KiB    | System reserved area (note 1)   |
|   $1000 |  $FF000    | 1020KiB    | On-board RAM                    |
| $100000 | $E00000    |   14MiB    | Expansion RAM                   |
| $F00000 |  $80000    |  512KiB    | Addressing "hole"               |
| $F80000 |  $40000    |  256KiB    | I/O Space                       |
| $FC0000 |  $40000    |  256KiB    | On-board ROM                    |

**Note 1**: The first 1K of the reserved area contains 256 exception vectors
used directly by the CPU. Custom exception vectors should be set up here.
In cases where a program is taking control of the whole computer and is not
using the firmware-provided basic IO routines, this area may be reused.
In such cases, the standard exception vectors should be replaced, or mapped 
elsewhere by setting VBR appropriately.

## IO space

**Note** that, on revision one boards, all odd addresses in IO space are 
allocated to the MC68901, rendering them unusable for other IO devices.
This limitation is no longer present on revision 1 boards, however must be
borne in mind if you wish to develop r1-compatible expansions. The MOVEP
instruction can help when programming for expansions mapped at all-even 
addresses.

| Range           | Odd/Even | Description                                    |
|-----------------|----------|------------------------------------------------| 
| $F80000-$F80006 | Even     | V9958 Video Board                              |
| $F80001-$F8002F | Odd      | MC68901 MFP                                    |
| $F80008-$F80026 | Even     | MC68681 DUART Expansion Board                  |
| $F80031-$F8003F | Odd      | MC68901 MFP (First few registers shadowed)     |
| $F80028-$F8002E | Even     | Reserved                                       |
| $F80040-$F8005F | Both     | ATA/IDE Interface Board                        |
| $F80060-$FBFFFF | Both     | Available (note 1)                             |

**Note 1**: When adding your reserved address range(s), please update the 
'available' row to reflect your changes. Remember that on r1 boards, only 
even addresses are _actually_ available in this range!

## ROM space

ROM space begins at $FC0000 and extends to the top of the address space at
$FFFFFF. 

**Note** that the on-board ROM occupies all of the space allocated to ROM, 
regardless of actual ROM size. The ROM is simply repeated ('striped') 
through all of ROM space.

Therefore, any expansion ROM will need to be mappped either into EXPANSION
RAM space, or into memory-mapped IO. 

Future boards will more selectively map the ROMs, allowing third-party ROM
to be mapped into ROM space. This will probably be supported by a runtime
configuration mechanism where possible, or a jumper configuration otherwise.

## IRQs

In a compatible system, it is important that devices do not compete for 
IRQ lines. The expansion bus does not currently make the vectored lines 
provided by the MFP available, therefore we only have the seven autovectors
provided by the CPU available. Expansion can of course handle vectoring
themseleves (see e.g. the 68681 expansion), or can use legacy autovectoring
(by asserting VPA instead of DTACK in response to an IACK).

Interrupt-capable expansions **must** ensure the IRQ being acknowledged in
an IACK cycle is theirs before attempting to drive the bus in acknowledgement.
The lower (physical) bits of the address bus reflect the IRQ level in such
a cycle - this should be factored in to the glue logic used to generate
DTACK (and a vector) or VPA.

Note that currently the on-board watchdog (production 1.2 boards only) 
**does not** prevent hanging on unacknowledged interrupts!

| IRQ | Allocated to                             |
|-----|------------------------------------------|
| 1   | **Unallocated**                          |
| 2   | V9958 Video: VBLANK (Legacy, VPA)        |
| 3   | ATA/IDE interface (Legacy, VPA)          |
| 4   | MC68901 (Vectored, DTACK)                |
| 5   | MC68681 DUART Expansion (Legacy, VPA)    |
| 6   | **Unallocated**                          |
| 7   | **Unallocated**                          |

Bear in mind that level 7 is non-maskable and should be reserved for
devices specifically requiring NMI if possible!

**Note** That on revision 1 boards, the MC68681 is unable to acknowledge
interrupts with a vector, due to a bug in the  the DTACK line on the
expansion bus. Therefore, on revision 1 boards the MC68681 must be
used only in polled mode.

