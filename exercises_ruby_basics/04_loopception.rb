loop do
  puts "This is hte outer loop."

  loop do
    puts "This is the inner loop."
    break
  end
  
  break
end

puts "This is outslide all loops"
