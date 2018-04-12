

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'

=begin
PEDAC
problem
  Given a string of words separated by spaces,
  write a method that takes this string of words
  returns a string in which the first and last letters
  of every word is swapped.

  You may assume that every word contains at least one letter,
  that the string will always contain at least one word.
  You may also assume that each string contains nothing
  but words and spaces
Examples (test case above)

Data Structures
  input string
  array map ?
  output string
Algorithm
  string split into words
  iterate over words (for transformation)
  each word transform map back
  return new string

  string.split.map do |word| # array of words
    word[-1] if word[0]
    word[0] if word[-1]
  end


=end
