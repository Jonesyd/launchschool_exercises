puts "What is your name?"
name = gets.chomp

puts name[-1] == "!" ? "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?" : "Hello #{name}"
