a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# 7 as the outer scope a is shadowed by the block argument a
