# V9958 text-mode / font demo

This is a simple demo that uses TEXT1 with a 6x8 bitmap font.

## Building

Simply do `make clean all` and you'll get a binary that 
can be uploaded to the serial bootloader.

## Editing the font

The font is generated from font.png, which is a 32x8 matrix 
of 6x8 pixel characters. The Ruby script process_c.rb takes
a C header created from the image (exported from GIMP) and
creates a VASM-compatible assembler file that is then 
included in the main code and copied directly to the 
pattern generator in VRAM.

If you want to change the font, do the following:

* Edit the font in GIMP (or image editor of your choice)
* Export the font as a C header (use the `.h` extension)
* Ensure you **deselect** the "Save alpha channel" option
* Run `process_c.rb` to generate `font.S`.

If you change the layout of the input image (for example 
changing the number of characters on a line) then you'll 
need to edit the Ruby script to reflect this.

