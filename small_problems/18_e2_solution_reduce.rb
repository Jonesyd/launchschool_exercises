# using reduce

def compute_sum(number)
  (1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end

puts compute_sum(5)
puts compute_product(6)

# does not need to be converted to an array.
