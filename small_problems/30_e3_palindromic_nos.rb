def palindromic_number?(number)
  return false unless number.is_a?(Integer)
  number == number.to_s.reverse.to_i
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?("helleh") == false
p palindromic_number?("aca") == false
