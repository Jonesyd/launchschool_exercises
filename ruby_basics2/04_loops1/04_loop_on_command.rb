loop do
  puts "Should I stop looping?"
  answer = gets.chomp
  break if answer.downcase == "yes"
  puts "To stop the loop, type 'yes'"
end
