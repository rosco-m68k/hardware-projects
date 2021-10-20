# C PCX image loader demo for Xosera

## Copyright (c)2021 Ross Bamford
## Xosera API (c)2021 Xark
## MIT License

This is a simple demo of loading PCX images into Xosera from C,
using Xark's excellent Xosera API. 

You can replace the image file (**must** be 320x240, 8bpp, 1 plane -
GIMP will export like that if you have an indexed 256 color image)
and rebuild to see different images.

### Building

```
ROSCO_DIR=/path/to/rosco_m68k make clean all
```

This will build a binary, which can be uploaded to a board that
is running the standard firmware.

### See also

There's a slightly less complete example in Assembly (with a more 
complex decoding algorithm) in `../pcx-asm`.

It's a bit faster than this, but much less robust.

