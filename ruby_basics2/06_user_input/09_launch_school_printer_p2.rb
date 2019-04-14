answer = nil

loop do

  loop do
    puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
    answer = gets.chomp
    break if answer.downcase == "q" || answer.to_i >= 3
    puts "Come on! We need at LEAST 3"
  end

  break if answer.downcase == "q"
  answer.to_i.times { puts "Launch School is the best!" }
end
