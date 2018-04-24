def triangle(a, b, c)
  array = [a, b, c]
  return :invalid if array.min(2).sum <= array.max
  return :invalid if array.any? {|num| num <= 0 }

  array.each do |num|
    case array.count(num)
    when 3 then return :equilateral
    when 2 then return :isosceles
    end
  end
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
