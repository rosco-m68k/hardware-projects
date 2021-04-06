#
# ------------------------------------------------------------
#                                  ___ ___ _   
#  ___ ___ ___ ___ ___       _____|  _| . | |_ 
# |  _| . |_ -|  _| . |     |     | . | . | '_|
# |_| |___|___|___|___|_____|_|_|_|___|___|_,_| 
#                     |_____|       firmware v1                 
# ------------------------------------------------------------
# Copyright (c)2020 Ross Bamford
# See top-level LICENSE.md for licence information.
#
# Address space calculation for MC68681
# ------------------------------------------------------------

puts "Address   :  A23 A22 A21 A20 A19 A18 A17 A16 A15 A14 A13 A12 A11 A10 A9  A8  A7  A6  A5  A4  A3  A2  A1  A0 (4321) = Reg"

(0xf80008..0xf80026).step(2).map do |addr|
  bits = ("%024b" % addr).split('')
  rbits = bits.reverse
  a1245 = [rbits[4]] + [rbits[3]] + [rbits[2]] + [rbits[1]]

  puts ("0x%08x:  " % addr) + bits.join('   ') + "  (#{a1245.join}) = #{eval "0b#{a1245.join}"}"
end

