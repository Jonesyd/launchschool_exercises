def palindrome?(array)
  array == array.reverse
end

p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?([1, 2, 2, 1]) == true
p palindrome?([1, 2, 3, 2, 1, 1]) == false
p palindrome?([1]) == true
p palindrome?([]) == true
