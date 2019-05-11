# In this kata, you must create a digital root function.
#
# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.
#
# Here's how it works:

# integer
# return condition - if digit count == 1
#   integer.to_s.chars(&:_i)  # to array of integers
#   sum that array (return an integer)
# anther call to self (recursive call)
#
#
# integer (single digit)

def digital_root(integer)
  return integer if integer.to_s.size == 1
  number = integer.to_s.chars.map(&:to_i).sum
  digital_root(number)
end



p digital_root(16) == 7
# # => 1 + 6
# # => 7
#
p digital_root(942) == 6
# # => 9 + 4 + 2
# # => 15 ...
# # => 1 + 5
# # => 6
#
p digital_root(132189) == 6
# # => 1 + 3 + 2 + 1 + 8 + 9
# # => 24 ...
# # => 2 + 4
# # => 6
#
p digital_root(493193) == 2
# # => 4 + 9 + 3 + 1 + 9 + 3
# # => 29 ...
# # => 2 + 9
# # => 11 ...
# # => 1 + 1
# # => 2
