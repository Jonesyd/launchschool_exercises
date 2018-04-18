def rotate_array(array)
  new_array = array.dup
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(integer, index)
  array = integer.to_s.chars
  num = array.size - index
  back = array.drop(num)
  new_back = rotate_array(back)
  front = array.take(num)
  (front + new_back).join.to_i
end

def max_rotation(integer)
  counter = integer.to_s.size
  while counter > 0
    integer = rotate_rightmost_digits(integer, counter)
    counter -= 1
  end
  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
