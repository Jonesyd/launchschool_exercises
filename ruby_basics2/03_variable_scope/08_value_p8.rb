array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# error as a is not initialised outside the block, so it can not be printed.
