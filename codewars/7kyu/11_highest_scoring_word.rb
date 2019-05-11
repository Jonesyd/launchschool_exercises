# Given a string of words, you need to find the highest scoring word.
#
# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
#
# You need to return the highest scoring word as a string.
#
# If two words score the same, return the word that appears earliest in the original string.
#
# All letters will be lowercase and all inputs will be valid.

def high(string)
  letter_array = ("a".."z").to_a
  score_hash = Hash.new(0)

  word_array = string.split
  word_array.each do |word|
    word.chars.each do |letter|
      score_hash[word] += letter_array.index(letter) + 1
    end
  end
  max_word_value = score_hash.values.max
  score_hash.key(max_word_value)
end



p high('man i need a taxi up to ubud') == "taxi"
p high('what time are we climbing up the volcano') == "volcano"
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
