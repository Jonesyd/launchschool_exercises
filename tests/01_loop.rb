i = 0
loop do
  i += 1
  break if i > 5
  next if i%2 == 0
  puts i
end
