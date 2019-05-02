def my_method(array)
  return [] if array.empty?
  array.map { |value| array.count != 1 ? value * value : value * 7 }
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

[]
[21]         # *7
[9, 16]      # *self, *self
[25, 36, 49] # *self, *self, *self
