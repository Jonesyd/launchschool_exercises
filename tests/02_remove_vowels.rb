# method that takes an array of strings and removes vowels.


def remove_vowels(array)
  array.map { |word| word.gsub(/[aeiou]/, "") }
end


p remove_vowels(["greeen", "yellow", "black", "white"])
