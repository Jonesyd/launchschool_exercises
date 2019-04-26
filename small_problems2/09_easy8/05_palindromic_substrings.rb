def palindromes(string)
  substrings(string).select { |sub| sub.length > 1 && sub == sub.reverse }
end


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
