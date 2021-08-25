# Assembly PCX image loader demo for Xosera

## Copyright (c)2021 Ross Bamford
## MIT License

This is a simple (even if the core decompression algorithm is
overly-complicated) demo of loading PCX images into Xosera 
from Assembly.

You can replace the image file (**must** be 320x240, 8bpp, 1 plane -
GIMP will export like that if you have an indexed 256 color image)
and rebuild to see different images.

### Building

```
make clean all
```

This will build a binary, which can be uploaded to a board that
is running the standard firmware.

### See also

There's a slightly more complete example in C (with a simpler
and more robust decoding algorithm) in `../pcx-c`.

