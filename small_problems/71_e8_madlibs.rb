word_hash = { noun: "", verb: "", adjective: "", adverb: "" }

word_hash.each do |key, _|
  puts "Enter a #{key}"
  word_hash[key] = gets.chomp
end

puts "Do you #{word_hash[:verb]} " +
     "your #{word_hash[:adjective]} " +
     "#{word_hash[:noun]} #{word_hash[:adverb]}? " +
     "That's hilarious!"
