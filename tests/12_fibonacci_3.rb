# select the element out of the array if its index is a fibonacci number

# create a fibonnaci sequence up to the size of the array.

# iterate over the array.
# select if the index of the item is a fibonacci number


def fib_index(array)
  fib_sequence = create_fib_sequence(array.size)

  array.select { |item| fib_sequence.include?(array.index(item)) }

end


def create_fib_sequence(integer, array=[])

  array.size < 2 ? array << 1 : array << array[-2] + array[-1]

  return array if array[-1] >= integer

  create_fib_sequence(integer, array)

end

# p create_fib_sequence(10000)
# p create_fib_sequence(1)
# p create_fib_sequence(2)

p fib_index([10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 200, 222, 23, 8, 5, 1, 3, 2])
