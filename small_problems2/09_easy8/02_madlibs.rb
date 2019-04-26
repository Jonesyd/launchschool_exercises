def get_words(hash)
  hash.each do |key, value|
    puts "Enter #{value} #{key}:"
    hash[key] = gets.chomp
  end
  print_out(hash)
end

def print_out(hash)
  puts "Do you #{hash[:verb]} your #{hash[:adjective]} #{hash[:noun]} #{hash[:adverb]}? " +
       "That's hilarious!"
end

language_hash = { noun: "a", verb: "a", adjective: "an", adverb: "an" }
get_words(language_hash)
