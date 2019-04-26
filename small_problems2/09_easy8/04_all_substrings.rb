def substrings(string)
  array = []
  start_point = 0

  while start_point < string.length
    counter = 1

    until counter > string.length - start_point
      array << string[start_point, counter]
      counter += 1
    end

    start_point +=1
  end

  array
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
