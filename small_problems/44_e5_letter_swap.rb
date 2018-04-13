# first attempt

def swap(string)
  new_array = string.split.map do |word|
    first_letter = word.slice(0)
    last_letter = word.slice(-1)
    word.slice!(0)
    word.insert(0, last_letter)
    word.slice!(-1)
    word.insert(-1, first_letter)
  end
  new_array.join(" ")
end

test_one = 'Oh what a wonderful day it is'
test_two = 'Abcde'
test_three = 'a'

p swap(test_one) == 'hO thaw a londerfuw yad ti si'
p swap(test_two) == 'ebcdA'
p swap(test_three) == 'a'

p 'Oh what a wonderful day it is' == test_one
p 'Abcde' == test_two
p 'a' == test_three
