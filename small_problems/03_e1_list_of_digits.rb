# Problem (implicit and explicit - write it out)
# => Method Takes one argument - a positive integer
# => Returns a list of the digits in the number.
# Examples / Test Cases
#   Happy Path
#   Edgecases
#     Focus on Inputs
#     Emptiness
#     Boundaries
#     Repitition
#     Upcase Downcase
#     Different Data Structures
#   Inputs / Outputs / Returns
#   Failures
# Data Structures (input, output rules)
#   input => Integer, Output => Array
# Alogorithms (in data structure language / test examples)
#   Method
#     positive integer? && > 0
#     Integer to Array  .to_s then split
#     Return Array
#   Call Method
# Code

def digit_list(int)
  if int.to_i.integer? && int.to_i > 0
    array_of_strings = int.to_s.split("")
    nums_array = array_of_strings.map {|a| a.to_i}
  else
    "Not a positive integer."
  end
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)
puts digit_list(1)
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(1)   == [1]                   # => true
puts digit_list("hello") # => "Not a positive integer"
puts digit_list("-1")    # => "Not a positive integer"
puts digit_list("")      # => "Not a positive integer"
puts digit_list(0)       # => "Not a positive integer"
# #puts digit_list([1, 2])  # => "Not a positive integer"
