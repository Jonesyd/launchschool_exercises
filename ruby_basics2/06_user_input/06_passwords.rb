PASSWORD = "SecreT"

loop do
  puts "Please enter your password"
  break if gets.chomp == PASSWORD
  puts "Invalid passord!"
end

puts "Welcome!"
