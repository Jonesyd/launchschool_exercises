answer = nil

loop do
  puts "How many output lines do you want? Enter a number:"
  answer = gets.chomp.to_i
  break if answer >= 3
  puts "Come on! We need at LEAST 3"
end

answer.times { puts "Launch School is the best!" }
