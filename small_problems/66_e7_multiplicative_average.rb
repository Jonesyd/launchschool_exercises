def show_multiplicative_average(array)
  result = (array.reduce(:*).to_f / array.count).round(3)
  puts "The result is #{format("%.3f", result)}"
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])
