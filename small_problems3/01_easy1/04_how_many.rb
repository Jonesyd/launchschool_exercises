
def count_occurrences(array)
  hash = Hash.new(0)
  array.each { |item| hash[item] += 1 }
  hash.each { |key, value| puts "#{key} => #{value}"  }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
