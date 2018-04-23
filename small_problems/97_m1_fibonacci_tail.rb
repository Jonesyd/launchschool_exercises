def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    puts "nth == 1 is executed"
    acc1
  elsif nth == 2
    puts "nth == 2 is executed"
    acc2
  else
    puts "nth is: #{nth} | aac1 is: #{acc1} | aac2 is: #{acc2}"
    fibonacci_tail(nth -1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(5)
# p fibonacci(10080)
