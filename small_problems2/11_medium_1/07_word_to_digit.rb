def word_to_digit(string)
  nums = %w(zero one two three four five six seven eight nine)
  string.split(/\b/).map { |word| nums.include?(word) ? nums.index(word) : word }.join
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
