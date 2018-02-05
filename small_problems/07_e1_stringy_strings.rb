def stringy(int)
  return nil unless int.is_a?(Integer)
  return nil unless int > 0
  stringy = ""
  int.times do |num|
    num += 1
    num % 2 == 0 ? stringy << "0" : stringy << "1"
  end
  stringy
end

puts stringy(-1) == nil
puts stringy(0) == nil
puts stringy(1) == '1'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
