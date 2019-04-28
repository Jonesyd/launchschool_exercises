def fibonacci(integer)
  counter = 2
  array = [1, 1]

  until counter == integer
    array[0], array[1] = array[1], array.sum
    counter += 1
  end

  array[1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
