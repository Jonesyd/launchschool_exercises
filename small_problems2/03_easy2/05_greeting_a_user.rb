def greeting(name)
  puts name[-1] == "!" ? "HELLO #{name.chop.upcase}. WHY ARE YOU SCREAMING?" : "Hello #{name}"
end

puts "What is your name"
name = gets.chomp

greeting(name)
