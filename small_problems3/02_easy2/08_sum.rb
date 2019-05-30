puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operand = gets.chomp.downcase


case
when operand == "s"
  puts "The sum of the integers between 1 and #{number} is #{(1..number).to_a.sum}."
when operand == "p"
  puts "The product of the integers between 1 and #{number} is #{(1..number).to_a.reduce(:*)}."
else
  "really?"
end
