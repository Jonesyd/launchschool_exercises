def find_operator
  operator = ""
  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    operator = gets.chomp.downcase
    break if ["s", "p"].include?(operator)
    puts "just 's' or 'p' please"
  end
  operator(operator)
end

def operator(abr)
  case abr
  when "s" then "sum"
  when "p" then "product"
  else "error"
  end
end

def compute(integer, operator)
  array = Array.new(integer) { |index| index + 1 }
  case operator
  when "sum" then array.reduce(:+)
  when "product" then array.reduce(:*)
  else "error"
  end
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

operator = find_operator
result = compute(integer, operator)

puts "The #{operator} of the integers between 1 and #{integer} is #{result}"
