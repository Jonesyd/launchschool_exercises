def add(no1, no2)
  no1 + no2
end

def multiply(no1, no2)
  no1 * no2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
