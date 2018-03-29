def prompt(text)
  puts ">> #{text}"
end

def tip_amount(bill, percent)
  (bill * percent / 100)
end

def two_decimals(num)
  format("%.2f", num)
end

prompt "What is the bill?"
bill = gets.chomp.to_f

prompt "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = tip_amount(bill, tip_percent)
total = (bill + tip)

prompt "The tip is $#{two_decimals(tip)}"
prompt "The total is $#{two_decimals(total)}"
