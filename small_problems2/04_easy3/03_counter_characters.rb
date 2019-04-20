puts "Please write a word or multiple words:"
words = gets.chomp
count = words.split.join("").length
puts "There are #{count} characters is \"#{words}\"."
