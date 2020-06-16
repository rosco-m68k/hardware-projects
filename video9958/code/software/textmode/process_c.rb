#/usr/bin/env ruby
# ------------------------------------------------------------
#                                   ___ ___ _
#  ___ ___ ___ ___ ___       _____|  _| . | |_
# |  _| . |_ -|  _| . |     |     | . | . | '_|
# |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
#                     |_____|       V9958 Video
# ------------------------------------------------------------
# Copyright (c)2020 Ross Bamford
# See top-level LICENSE.md for licence information.
# ------------------------------------------------------------
# 
CHAR_WIDTH=6
CHARS_PER_ROW=32
IMAGE_WIDTH=CHAR_WIDTH*CHARS_PER_ROW
INPUT_FILENAME='font.c'
OUTPUT_FILENAME='font.S'

def get_char(bits, n)
  col = n % CHARS_PER_ROW
  row = n / CHARS_PER_ROW

  pcol = col * CHAR_WIDTH
  prow = row * 8 * IMAGE_WIDTH

  [
    bits[prow + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 1) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 2) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 3) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 4) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 5) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 6) + pcol,CHAR_WIDTH],
    bits[prow + (IMAGE_WIDTH * 7) + pcol,CHAR_WIDTH]
  ]
end

code = File.read(INPUT_FILENAME)
data = code.scan(/\s+"([0-7\\]+)"/).flat_map { |a| eval("\"#{a.first}\"").bytes }

bits = data.each_slice(3).flat_map do |r,g,b|
  r + g + b > 0 ? '1' : '0'
end

File.open(OUTPUT_FILENAME, 'w') do |f|
  f << <<~EOC
;------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|       V9958 video
;------------------------------------------------------------
; Copyright (c)2020 Ross Bamford
; See top-level LICENSE.md for licence information.
;
; This file is generated from #{INPUT_FILENAME}
;------------------------------------------------------------
  EOC

  f << "    section .rodata\n\n__FONT_BEGIN:\n"

  (0..255).each do |chr|
    f << ("; 0x%02x\n" % chr)
    f << get_char(bits, chr).map(&:join).map { |b| "    dc.b    %#{b}#{'0' * (8 - CHAR_WIDTH)}" }.join("\n")
    f << "\n"
  end

  f << "__FONT_END:"
end


