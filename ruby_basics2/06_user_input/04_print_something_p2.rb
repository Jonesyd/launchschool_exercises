loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase

    case answer
    when "y" then puts "something" && break
    when "n" then break
    else puts "Invalid input! Please enter y or n"
    end
    
end
