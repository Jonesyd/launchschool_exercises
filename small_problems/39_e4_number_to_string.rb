DIGITS = %W[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(number)
  results = ""
  loop do
    number, remainder = number.divmod(10)
    results.prepend(DIGITS[remainder])
    break if number == 0
  end
  results
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# original solution (but not in the spirit of the problem)

# def integer_to_string(integer)
#   integer.digits.reverse.join
# end
