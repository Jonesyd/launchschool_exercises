def prompt(msg)
  puts "==> #{msg}"
end

numbers = { :first => nil, :second => nil }
operators = [:+, :-, :*, :/, :%, :** ]

numbers.each do |key, value|
  prompt "Enter the #{key.to_s} number:"
  numbers[key] = gets.chomp.to_i
end

def operation(ops, nums)
  ops.each do |op|
    equation = "#{nums[:first]} #{op.to_s} #{nums[:second]}"
    prompt "#{equation} = #{eval(equation)}"
  end
end

operation(operators, numbers)
