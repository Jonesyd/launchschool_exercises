def repeater(string)
  new_array = []
  string.chars.each { |chr| new_array << chr << chr }
  new_array.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
