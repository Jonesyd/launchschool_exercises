def triangle(a, b, c)
  ary = [a, b, c]
  return :invalid if ary.sum != 180 || ary.any? { |ang| ang <= 0 }
  return :right if ary.one? { |ang| ang == 90 }
  return :acute if ary.all? { |ang| ang < 90 }
  return :obtuse if ary.one? { |ang| ang > 90 }
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
