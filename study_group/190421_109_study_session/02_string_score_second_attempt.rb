# Problem (implicit, explicit):
    # Given a string of words, you need to find the highest scoring word.
    # Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.
    # You need to return the highest scoring word as a string.
    # If two words score the same, return the word that appears earliest in the original string.
    # All letters will be lowercase and all inputs will be valid.
# Examples (happy path, edgecases, failures):
  # see below

def score_hash
  letter = "a"
  score_hash = {}
  (1..26).each do |num|
    score_hash[letter] = num
    letter = letter.succ
  end
  score_hash
end

def result_hash(string, score_hash)
  result_hash = {}
  string.split.each do |word|
    score = 0
    word.chars.each { |char| score += score_hash[char] }
    result_hash[word] = score
  end
  result_hash
end

def high(string)
  result_hash = result_hash(string, score_hash)
  result_hash.key(result_hash.values.max)
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'
