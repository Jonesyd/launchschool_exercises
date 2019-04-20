def tip_amount(bill, tip_percent)
  tip_percent == 0 ? 0 : bill * tip_percent / 100
end

def total(bill, tip_amount)
  bill + tip_amount
end

def receipt(tip, total)
  puts "The tip is $#{"%.2f" % tip}"
  puts "The total is $#{"%.2f" % total}"
end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage"
tip_percent = gets.chomp.to_f

tip = tip_amount(bill, tip_percent).round(2)
total = total(bill, tip).round(2)
puts receipt(tip, total)
