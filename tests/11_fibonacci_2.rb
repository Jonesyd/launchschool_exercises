# select the element out of the array if its index is a fibonacci number

# create an fibonanci sequence
# up to integer

# iterate over the array and select those with an index that is included in the fibonacci sequence.

def fibonacci_index(array)
  fib_sequence = fibonacci_sequence(array.size)
  puts fib_sequence
  array.select { |item| fib_sequence.include?(array.index(item)) }
end

def fibonacci_sequence(integer, array=[])

  if array.size < 2
    array << 1
  else
    array << array[-2] + array[-1]
  end

  return array if array[-1] >= integer
  
  fibonacci_sequence(integer, array)
end

# p fibonacci_sequence(34)
# p fibonacci_sequence(1)
# p fibonacci_sequence(144)

p fibonacci_index([10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 30, 40, 50])
