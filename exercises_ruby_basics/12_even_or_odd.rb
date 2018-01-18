count = 1

loop do
  n = "odd" if count.odd?
  n = "even" if count.even?
  puts "#{count} is #{n}!"
  break if count == 5
  count += 1
end
