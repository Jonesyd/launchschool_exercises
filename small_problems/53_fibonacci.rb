# solution

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 2
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(6)
p fibonacci(7)
p fibonacci(8)
p fibonacci(100)

# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

=begin
PEDAC
problem
  The Fibonacci series is a series of numbers
  (1, 1, 2, 3, 5, 8, 13, 21, ...)
  such that the first 2 numbers are 1 by definition,
  and each subsequent number is the sum of the two previous numbers.
  This series appears throughout the natural world.

  Computationally, the Fibonacci series is a very simple series,
  but the results grow at an incredibly rapid rate.
  For example, the 100th Fibonacci number is
  354,224,848,179,261,915,075 -- that's enormous,
  especially considering that it takes 6 iterations
  before it generates the first 2 digit number.

  Write a method that calculates and
  returns the index of the first Fibonacci number
  that has the number of digits specified as an argument.
  (The first Fibonacci number has index 1.)

Example / Test Case (above)
Data Structure
  input integer
  calculation # looks recursive
  output integer

Algorithm
  # Try and solve the first
  def find_fibonacci_index_by_length(number)
    # create a fibonacci method
    # call fibonacci method unless

  end

  def fibonacci(number)
    return 1 if 1
    return 2 if 2


    what is the problem?
    return the result

  end


=end
