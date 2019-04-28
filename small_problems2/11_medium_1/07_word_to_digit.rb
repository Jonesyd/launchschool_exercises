# Problem (implicit, explicit):
  #
# Examples (happy path, edgecases, failures):
  #
# Data Structures
  # input:
  # rules:
  # output (return):
# Algorithm:
  # split array
  #
  #
# Code:

def word_to_digit(string)
  numbers = %w(zero one two three four five six seven eight nine)
  string.split(/\b/).map { |word| numbers.include?(word) ? numbers.index(word) : word }.join
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
