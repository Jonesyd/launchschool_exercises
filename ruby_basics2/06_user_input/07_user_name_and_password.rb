USER_NAME = "Me"
PASSWORD = "SecreT"

loop do
  puts "Please enter your user name:"
  user_name_attempt = gets.chomp
  puts "Please enter your password"
  pass_attempt = gets.chomp
  break if user_name_attempt == USER_NAME && pass_attempt == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"
