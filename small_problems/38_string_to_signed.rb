require "pry"

def string_to_integer(string)
  numbers = {
    "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
  }
  array = string.chars.map { |char| numbers[char] }
  value = 0
  array.each { |digit| value = value * 10 + digit }
  value
end

def string_to_signed_integer(string)
  first_char = string.slice(0)
  if first_char == "+" || first_char == "-"
     string.slice!(0)
     integer = string_to_integer(string)
     if first_char == "-"
       integer = -integer
     end
   else
     return string_to_integer(string)
   end
   integer
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
