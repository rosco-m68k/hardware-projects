# V9958 80x24 TEXT2 console.

This is the beginnings of the text-mode console that will 
eventually make its way into the firmware. 

This console supports the following features:

   * 80x24 lines
   * Scrolling (Software, but fairly efficient)
   * Clear screen ability
   * Support for CR and Backspace
   * Flashing cursor, alternates between any two characters

The following is still TODO (coming soon):

   * Programmatically move the cursor

## Building

Simply do `make clean all` and you'll get a binary that 
can be uploaded to the serial bootloader.

## Editing the font

The font is currently copied in from `../textmode`. See 
the README there for instructions on editing.

