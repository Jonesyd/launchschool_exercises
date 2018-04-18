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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
