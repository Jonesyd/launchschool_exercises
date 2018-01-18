def question
  puts ">> Do you wnat me to print something? (y/n)"
  answer = gets.chomp.downcase
end

if question == "y"
  puts "something"
elsif question == "n"
  question
else puts ">> Invalid input! Please enter y or n"
  question
end
