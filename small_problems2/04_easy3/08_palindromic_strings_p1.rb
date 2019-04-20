def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

def array_palindrome?(array)
  array == array.reverse
end

puts array_palindrome?([1, 2, 3]) == false
puts array_palindrome?([1, 2, 1]) == true

def both_palindrome?(argument)
  argument == argument.reverse
end

puts both_palindrome?([1, 2, 3]) == false
puts both_palindrome?([1, 2, 1]) == true
puts both_palindrome?('madam') == true
puts both_palindrome?('Madam') == false          # (case matters)
puts both_palindrome?("madam i'm adam") == false # (all characters matter)
puts both_palindrome?('356653') == true
