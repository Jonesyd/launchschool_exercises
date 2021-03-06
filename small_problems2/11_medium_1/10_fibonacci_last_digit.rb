def fibonacci_last(integer)
  last_digit = fibonacci(integer).to_s[-1].to_i
end

def fibonacci(integer)
  counter = 2
  array = [1, 1]

  until counter == integer
    array[0], array[1] = array[1], array.sum.to_s[-1].to_i
    counter += 1
  end

  array[1]
end


p fibonacci_last(15) #== 0        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) #== 5       # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)  #== 5     # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)  == 1 # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) == 3# -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) == 4# -> 4
# p fibonacci_last(123,456,789,987,745) == 5
