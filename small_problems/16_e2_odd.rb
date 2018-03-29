range = 1..99
range.each { |num| puts num if num.odd? }

puts "### upto ###"
1.upto(99) { |num| puts num if num.odd? }

puts "### downto ###"
99.downto(1) { |num| puts num if num.odd? }
