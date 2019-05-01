# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.

def dasherizer(integer)
  array = integer.to_s.chars.map(&:to_i)
  new_string = ""
  size = array.size - 1

  array.each_with_index do |int, index|
    if index == size
      new_string << int.to_s
    elsif int.odd? && array[index + 1].odd?
      new_string << int.to_s + "-"
    else
      new_string << int.to_s
    end
  end

  new_string
end


p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'

##################################

# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.



# turn input into array of integers
# iterate and look for odd nums
# if two consec nums are odd then insert a dash
# return string

# def dasherizer(number)
#   array_strings = number.to_s.chars#.map(&:to_i)
#   array_strings.each_with_index do |str, index|
#     if index < array_strings.size
#       if array_strings[index + 1].to_i.odd? && str.to_i.odd?
#         str << '-'
#       end
#     end
#   end
#   array_strings.join
# end
#
# p dasherizer(2112) == '21-12'
# p dasherizer(201105742) == '201-105-742'
# p dasherizer(123456789) == '123456789'
# p dasherizer(21121) == '21-121'
