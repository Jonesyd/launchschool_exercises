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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
