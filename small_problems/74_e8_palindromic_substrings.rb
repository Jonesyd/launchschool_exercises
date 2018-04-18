def palindromes(string)
  array = substrings(string)
  array.select { |sub| sub.length > 1 && sub == sub.reverse }
end

def palindromes(string)
  array = substrings(string)
  new_array = []
  array.each do |sub|
    if sub.length > 1 && sub == sub.reverse
      new_array << sub
    end
  end
  new_array
end

def substrings(string)
  index = 0
  new_array = []

  while index < string.size
    sub = string.slice(index..-1)
    new_array << substrings_at_start(sub)
    index += 1
  end
  new_array.flatten
end

def substrings_at_start(string)
  array = []
  1.upto(string.size) { |num| array << string.slice(0,num) }
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=begin
PEDAC
problem
  Write a method that returns a list of all substrings
  of a string that are palindromic.
  That is, each substring must consist of the same sequence
  of characters forwards as it does backwards.
  The return value should be arranged in the same sequence
  as the substrings appear in the string.
  Duplicate palindromes should be included multiple times.

  you should consider all characters and
  pay attention to case; that is, "AbcbA" is a palindrome,
  but neither "Abcba" nor "Abc-bA" are.
  In addition, assume that single characters are not palindromes.
example (test case above)
data structure
  string input
  array output
Algorithm
  def palindromes(string)
    array = substrings(string)
    array.map do |sub|
      sub.size > 0 &&
        sub == sub.reverse
    end
  end


=end
