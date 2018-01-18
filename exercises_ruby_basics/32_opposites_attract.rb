def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

request = ">> Please enter a positive or negative integer:"
invalid_input = ">> Invalid input. Only non-zero integers are allowed"
validation = ">> Sorry. One integer must be positive, one must be negative.\n>> Please start over"


loop do
  puts request
  first_integer = gets.chomp
  unless valid_number?(first_integer)
    puts invalid_input
    next
  end
  second_integer = nil
  loop do
    puts request
    second_integer = gets.chomp
    unless valid_number?(second_integer)
      puts invalid_input
      next
    else
      break
    end
  end
    if (first_integer.to_i.abs + second_integer.to_i.abs) == (first_integer.to_i + second_integer.to_i) ||  ((first_integer.to_i.abs + second_integer.to_i.abs) * -1) == (first_integer.to_i + second_integer.to_i)
       puts validation
       next
    end
    sum = first_integer.to_i + second_integer.to_i
    puts "#{first_integer} + #{second_integer} = #{sum}"
  break
end
