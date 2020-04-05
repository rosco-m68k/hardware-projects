# Arduino IO device example

This is a very simple reading an Arduino 'IO device' register. 

See `../arduino-ioread` for the required Arduino code that makes
this work, and `../README.md` for details of how to hook everything
up.

## Building

You may need to adjust the library and include paths in the `Makefile`
to point to the built libraries from the main `rosco_m68k` project.

Then do:

```
make clean all
```

This will build `arduread.bin`, which can be uploaded to a board that
is running the `serial-receive` firmware.

If you're feeling adventurous (and have ckermit installed), you
can try:

```
SERIAL=/dev/some-serial-device make load
```

which will attempt to send the binary directly to your board (which
must obviously be connected and waiting for the upload).

