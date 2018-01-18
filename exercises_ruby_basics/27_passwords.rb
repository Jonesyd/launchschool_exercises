Password = "SecreT"

loop do
  puts ">> Please enter your password:"
  answer = gets.chomp
  break if answer == Password
  puts ">> Invalid password"
end

puts "Welcome!"
