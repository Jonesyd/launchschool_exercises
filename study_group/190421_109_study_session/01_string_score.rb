def high(string)
  score_hash = score
  result_hash = {}
  words_array = string.split
  words_array.each do |word|
    score = 0
    letter_array = word.chars
    letter_array.each { |letter| score += score_hash[letter.to_sym] }
    result_hash[word.to_sym] = score
  end
  max_value = result_hash.values.max
  result_hash.key(max_value).to_s
end

def score
  start_letter = "a"
  start_number = 1
  score_hash = {}

  loop do
    score_hash[start_letter.to_sym] = start_number
    start_letter = start_letter.succ
    start_number += 1
    break if start_number > 26
  end
  score_hash
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'
