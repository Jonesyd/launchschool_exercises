# Have the method letter_changes(str) take the str parameter being passed and modify it using the following algorithm.

# Replace every letter in the string with the 3rd letter following it in the alphabet (i.e. c becomes f, Z becomes C).

# Then return this modified string.
require "pry-byebug"

#wip

def letter_changes(string)
  array = ("a".."z").to_a

  result = string.chars.map do |char|
    binding.pry
    case
    when array.index(char) == 24 then "a"
    when array.index(char) == 25 then "b"
    when array.index(char) == 26 then "c"
    when char.match(/[a-z]/i) then array[array.index(char) + 3]
    else char
    end
  end
  result.join
end



p letter_changes("this long cake@&") #== "wklv orqj fdnh@&"
p letter_changes("Road trip9") #== "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") #== "HPDLOC@jpdlo.frp"
