puts "Please write word or multiple words:"
string = gets.chomp
letters = string.split.join.size
puts "There are #{letters} characters in \"#{string}\"."
