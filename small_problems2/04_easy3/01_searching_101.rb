order_hash = {1 => "1st", 2 => "2nd", 3 => "3rd", 4 => "4th", 5 => "5th", 6 => "last" }

array = []
order_hash.each do |_, value|
  puts "Enter the #{value} number:"
  array << gets.chomp.to_i
end

last_number = array.pop

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array.inspect}."
else
  puts "The number #{last_number} does not appear in #{array.inspect}"
end
