def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  aplha = ("a".."z").to_a + ("0".."9").to_a
  clean_str = string.downcase.chars.select { |char| aplha.include?(char) }
  palindrome?(clean_str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
