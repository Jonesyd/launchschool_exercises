USERNAME = "admin"
Password = "SecreT"


loop do
  puts ">> Please enter your username:"
  name = gets.chomp
  puts ">> Please enter your password:"
  answer = gets.chomp
  break if answer == Password && name == USERNAME
  puts ">> Authorisation Failed"
end

puts "Welcome!"
