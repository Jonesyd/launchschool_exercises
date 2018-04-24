def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    binding.pry
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# original solutions

# def fibonacci_last(integer)
#   hash = { 0 => 0, 1 => 1 }
#
#   (2..integer).each do |int|
#     hash[int] = hash[int-2].to_s[-1].to_i + hash[int-1].to_s[-1].to_i
#     hash.keep_if { |key, _ | key == int || key == int - 1 }
#   end
#
#   hash[integer].to_s[-1].to_i
# end

p fibonacci_last(1)      #== 1
p fibonacci_last(2)      #== 1
p fibonacci_last(3)      #== 2
p fibonacci_last(4)      #== 3
p fibonacci_last(5)      #== 5
p fibonacci_last(6)      #== 8
p fibonacci_last(15)     # == 0  # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)     # == 5  # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)     == 5  # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001) == 1  # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) == 3  # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) == 4  # -> 4
