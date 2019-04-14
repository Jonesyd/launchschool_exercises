def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

error_message = "Invalid input. Only integers are allowed"
numerator, denominator = nil, nil

loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp

  if valid_number?(numerator)
    loop do
      puts "Enter the denominator:"
      denominator = gets.chomp
      break if valid_number?(denominator)
      puts error_message
    end
  else puts error_message
  end

  break if valid_number?(numerator) && valid_number?(denominator)
end

puts "#{numerator} / #{denominator} = #{numerator.to_i / denominator.to_i}"
