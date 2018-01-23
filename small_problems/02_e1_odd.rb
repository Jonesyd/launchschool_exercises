def is_odd?(integer)
  integer.to_i.remainder(2)  != 0
end


# def is_odd?(integer)
#   integer.to_i % 2  != 0
# end

puts is_odd?(1000) == false


puts is_odd?(2)    == false
puts is_odd?(5)    == true
puts is_odd?(-17)  == true
puts is_odd?(-8)   == false
puts is_odd?(0)    == false
puts is_odd?(7)    == true


##########  NOTES  ############

# Problem (write down implicity and explicity)
#   Output = A method
#   Method takes one integer argument
#   The argument can be a positive, negative or zero
#   Assume that argument is a valid integer [Consider a string of words that equals zero on .to_i (exception)]
#   Return true or false (true if odd)
# Example / Test Data
#   Focus on Input (yes see test cases)
#   Emptiness (assume argument is a valid integer)
#   Boundaries - ok.
#   Repitition - ok.
#   Upercase Lowercase - ok.
#   Different Data Structures (assume argument is a valid integer)
#     Examples:
    # puts is_odd?(2)    # => false
    # puts is_odd?(5)    # => true
    # puts is_odd?(-17)  # => true
    # puts is_odd?(-8)   # => false
    # puts is_odd?(0)    # => false
    # puts is_odd?(7)    # => true

# Data Structure (String, Array, Hash, Integer, Compound)
#   Input [Integer]
#   Rules [within method]
#   Output [Boolean]
# Algorithm
#   In the language of the data Structure
#     argument remainder after dividing by 2 == 0
#     return true false
#     write in method definition.
# #   Assess against the examples (seems to work)
# Abstration
#   Break down problem
#   Built in abstractions
#   Solve in one or two sentences
#   Methods
# Code: Last Step
