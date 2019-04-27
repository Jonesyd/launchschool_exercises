def max_rotation(integer)
  rotations = integer.to_s.size
  recursion_excursion(integer, rotations)
end

def recursion_excursion(integer, rotations)
  return integer if rotations == 1
  integer = rotate_rightmost_digits(integer, rotations)
  rotations -= 1
  recursion_excursion(integer, rotations)
end

def rotate_rightmost_digits(number, integer)
  array = number.to_s.chars
  array.push(array.slice!(-integer)).join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
