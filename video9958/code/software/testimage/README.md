# V9958 Image Sample

Displays a static image, one of the initial test programs for the 
V9958 integration.

## Building

This expects the `hardware-projects` repository (this one) to have
been checked out alongside the main `rosco_m68k` repository. It will
look for the libraries at an appropriate relative path - edit the
`Makefile` if those paths are different in your setup.

```
make clean all
```

This will build `testimage.bin`, which can be uploaded to a board that
is running the `serial-receive` firmware. It will display a retro-style
picture of the board with the `rosco_m68k` logo underneath.

## Custom image

To use a custom image, you'll need a 256-pixel wide bitmap. Height 
can be up to 212 pixels (if using 212-line mode in the code, the 
default). Although the height can vary (the rest of the screen will
be filled with black) the width *must* be 256 pixels, or your image
will end up corrupted on-screen.

The image format should be:

* 5-byte header (discarded)
* Uncompressed
* 8BPP, GRB332 format
* Named e.g. `yourimage.img`

This tool will let you convert PNG, JPG etc to a roughly-appropriate
format: https://lvgl.io/tools/imageconverter

This tool will let you view the output: https://rawpixels.net

Once you've created your image, just tell Make the base-name of
it and it will do the rest:

```
IMAGE=yourimage make clean all
```

(Note: you don't supply the extension, that has to be `.img`).

### Why the five-byte header?

I've been using this tool https://lvgl.io/tools/imageconverter to 
convert PNGs to an appropriate format, and it adds a five-byte 
header. The Makefile will strip this off.

If you are using other tools and just have raw pixels, you could
either edit the Makefile to remove the step, or short-circuit it
by naming your image `<yourname>fix.bin`. When you then pass
`IMAGE=<yourname>` in to make, it will think it's already done the
header removal.


