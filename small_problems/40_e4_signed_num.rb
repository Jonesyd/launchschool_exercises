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

def signed_integer_to_string(number)
  num = integer_to_string(number.abs)
  case
  when number > 0 then num.prepend("+")
  when number < 0 then num.prepend("-")
  else num
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
