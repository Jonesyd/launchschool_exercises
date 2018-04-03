def multiply(first, second)
  first * second
end

def square(num)
  multiply(num, num)
end

def power_to_n(num, n)
  total = 1
  n.times { total = multiply(total, num) }
  total
end

puts power_to_n(2, 1) == 2  # true
puts power_to_n(2, 2) == 4  # true
puts power_to_n(2, 3) == 8  # true
puts power_to_n(2, 4) == 16 # true
puts power_to_n(2, 5) == 32 # true
