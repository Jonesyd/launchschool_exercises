# create fibonacci series between one and input integer
# return in an array

# integer input
# array output

# array

# algorithm

# create a recusive functino
# return condition when last element in array is greater than or equal to input integer
# add another element to the array
# call itself again with the integer and the array (emtpy array is default at the start)
#
# edge case is the start of the array index < 2 equals one

def create_fibonacci(integer, array=[])

  return [] if integer <= 0

  array.size < 2 ? array << 1 : array << array[-2] + array[-1]

  if array.last >= integer
    array.pop
    return array
  end

  create_fibonacci(integer, array)
end

p create_fibonacci(10)
