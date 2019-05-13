# select the element out of the array if its index is a fibonacci number

# input array
# find the maximum number in the array
# build an array of fibonacci numbers up to the max numbers
# iterate over the original array
# slect see if current item is included in the fibonacci array
# output array

# 1 1 2 3 5 8 13

def fibonacci_index(array)
  fibonacci_sequence = create_fibonacci(array.size)
  new_array = array.select { |num| fibonacci_sequence.include?(array.index(num)) }
end


def create_fibonacci(integer, array=[])

  return array if integer == array.size

  if array.size == 0 || array.size == 1
    array << 1
  else
    array << array[-2] + array[-1]
  end

  create_fibonacci(integer, array)

end


# p create_fibonacci(25)

p fibonacci_index([10, 15, 17, 20, 24, 25, 6, 7, 8]) == [15, 17, 20, 25, 8]
#                  # 0  1   2  3   4    5  6  7  8
