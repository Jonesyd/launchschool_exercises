def triangle(one, two, three)
  array = [one, two, three]
  case
  when array.include?(0) then :invalid
  when array.min(2).sum < array.max then :invalid
  when array.max == array.min then :equilateral
  when array.count(array.min) == 2 || array.count(array.max) == 2 then :isosceles
  else :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
