def triangle(a, b, c)
  array = [a, b, c]
  case
  when array.any?{ |angle| angle <= 0  } then :invalid
  when array.sum != 180                  then :invalid
  when array.any? {|angle| angle == 90 } then :right
  when array.all? {|angle| angle  < 90 } then :acute
  when array.any? {|angle| angle > 90 }  then :obtuse
  else puts "Case Statement Error"
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
