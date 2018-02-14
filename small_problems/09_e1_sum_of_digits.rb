def sum(int)
  int.to_s.split(//).map(&:to_i).reduce(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(1) == 1
puts sum(12) == 3
