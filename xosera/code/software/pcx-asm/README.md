# Assembly PCX image loader demo for Xosera

## Copyright (c)2021 Ross Bamford
## MIT License

This is a simple (even if the core decompression algorithm is
overly-complicated) demo of loading PCX images into Xosera 
from Assembly.

The `show_pcx.asm` can be dropped in to other projects and
is callable from assembly (`SHOW_PCX`) or via a C-friendly
wrapper (`show_pcx`). If using with C, see `include/pcx-asm.h`.

The included `kmain.asm` takes care of bootstrapping Xosera
and displays an image that is built into the binary.

You can replace the image (**must** be 320x240, 8bpp, 1 plane -
GIMP will export like that if you have an indexed 256 color image)
and rebuild to see different images.

### Building

```
ROSCO_DIR=/path/to/rosco_m68k make clean all
```

This will build a binary, which can be uploaded to a board that
is running the standard firmware.

### See also

For an example of using this from C, see `usage.c.example`. 
That example is designed to work with Xark's `xosera_api`,
but all the actual drawing is handled by directly talking
to Xosera.

There's a slightly more complete example PCX algorithm in C 
(with a simpler and more robust decoding algorithm) in 
`../pcx-c`.

This version does _slightly_ beat the C one on speed, but is
obviously less robust.

