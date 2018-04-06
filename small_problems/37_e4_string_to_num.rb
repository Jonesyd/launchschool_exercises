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

p string_to_integer('4321')  == 4321
p string_to_integer('570')  == 570
