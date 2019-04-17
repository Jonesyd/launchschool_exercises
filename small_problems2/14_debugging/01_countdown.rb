def decrease(counter)
  counter - 1
end

counter = 20

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH'
