def compute_sum(number)
  total = 0
  1.upto(number) { |num| total += num }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |num| total *= num }
  total
end

puts compute_sum(5)
puts compute_product(6)
