def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def opposites?(number_string, array)
  new_array = [array[0], number_string.to_i]
  new_array[0] > 0 && new_array[1] < 0 || new_array[0] < 0 && new_array[1] > 0
end

integers = []
error_integer   = "Invalid input. Only non-zero integers are allowed"
error_opposite  = <<-MSG
Sorry. One integer must be positive, one must be negative.
Please start over.
MSG

loop do
  puts "Please enter a positive or negative integer"
  integer = gets.chomp
  if valid_number?(integer)

    case integers.size
    when 0 then integers << integer.to_i && next
    when 1 then
      if opposites?(integer, integers)
        integers << integer.to_i && break
      else
        puts error_opposite
        integers = []
      end
    end

  else
    puts error_integer
  end
end

puts "#{integers[0]} + #{integers[1]} = #{integers[0] + integers[1]}"
