def sum_from_one(num)
  n = 1
  total = []

  loop do
    total << n
    break if n == num
    n += 1
  end
  total.reduce(:+)
end

def product_from_one(num)
  n = 1
  total = []

  loop do
    total << n
    break if n == num
    n += 1
  end
  total.reduce(:*)
end

def prompt(msg)
  puts ">> #{msg}"
end

def operation
  answer = nil
  loop do
    prompt "Enter 's' to compute the sum," \
           " or 'p' to compute the product."
    answer = gets.chomp.downcase
    break if ["s", "p"].include?(answer)
    prompt "Just type 's' or 'p'. Thanks!"
  end
  answer
end

def op_result(opn, num)
  if opn == "s"
    sum_from_one(num)
  elsif opn == "p"
    product_from_one(num)
  end
end

prompt "Please enter an integer greater than 0:"
number = gets.chomp.to_i
op = operation
result = op_result(op, number)
prompt "The #{op} of the integers between" \
       " 1 and #{number} is #{result}."
