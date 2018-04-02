def appears_in_array(array, last_number)
  text = array.include?(last_number) ? "appears" : "does not appear"
  "The number #{last_number} #{text} in #{array}."
end

array = []
counter = 1
last_number = nil
hash = { 1 => "1st", 2 => "2nd", 3 => "3rd",
         4 => "4th", 5 => "5th", 6 => "last" }

loop do
  puts "==> Enter the #{hash[counter]} number:"
  number = gets.chomp.to_i
  counter == 6 ? last_number = number : array << number
  counter += 1
  break if counter > 6
end

puts appears_in_array(array, last_number)
