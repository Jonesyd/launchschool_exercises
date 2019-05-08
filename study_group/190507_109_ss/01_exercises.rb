# Have the method letter_changes(str) take the str parameter being passed and modify it using the following algorithm.

# Replace every letter in the string with the 3rd letter following it in the alphabet (i.e. c becomes f, Z becomes C).

# Then return this modified string.

def letter_changes(string)
  array = ("a".."z").to_a

  result_array = string.chars.map do |char|
    case
    when char.downcase == "x" then char == "x" ? "a" : "A"
    when char.downcase == "y" then char == "y" ? "b" : "B"
    when char.downcase == "z" then char == "z" ? "c" : "C"
    when char.match(/[a-z]/) then array[array.index(char.downcase) + 3]
    when char.match(/[A-Z]/) then array[array.index(char.downcase) + 3].upcase
    else char
    end
  end
  result_array.join
end


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
