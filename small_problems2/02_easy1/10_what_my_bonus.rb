# Problem (implicit, explicit):
  # Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
# Examples (happy path, edgecases, failures):
  # see below
# Data Structures
  # input: int and boolean
  # process:
  # output (return):int
# Algorithm:
  # if boolean
  # int / 2
  # 0
# Code:
def calculate_bonus(integer, boolean)
  boolean ? integer / 2.0 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
