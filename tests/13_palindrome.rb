# write a method to determine if a word is a palindrome, without using the reverse method

# string input
#   split the string into chars
#   use reverse each to build a new array
#   does the new array equal the original array

# boolean output

def palindrome(string)
  array = string.chars.map(&:downcase)
  new_array = []

  array.reverse_each {|char| new_array << char }
  new_array.join == string.downcase
end

p palindrome("hello") == false
p palindrome("lol") == true

# case insenstative

p palindrome("Pop") == true
