def average(array)
  total = array.inject(0) {|sum, int| sum + int.to_f }
  average = total / array.count
  average.round(1)
end

puts average([1, 5, 87, 45, 8, 8]) == 25.7
puts average([9, 47, 23, 95, 16, 52]) == 40.3
puts average([1, 2]) == 1.5
puts average([5, 10]) == 7.5


#  Lessons:
#    1. A better variable name is "numbers" as it is more descriptive
#    2. Learn the reduce method (but inject worked the same!).
