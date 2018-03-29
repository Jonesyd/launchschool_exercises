puts "range #each #even?"
(1..99).each { |num| puts num if num.even? }

puts "upto"
1.upto(99) { |num| puts num if num.even? }
