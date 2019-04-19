def sum(integer)
  array = []
  integer.to_s.each_char { |char| array << char.to_i  }
  array.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
