# convert into an array
# compare agains an array of numbers
# get the index
# map to numbers

# reduce it down to numbers
# recursive call until there is a single number.



def computer(string)
  numbers = %w(zero one two three four five six seven eight nine)
  hash = { plus: "+", minus: "-", divided_by: "/", times: "*"  }
  string = string.gsub("divided by", "divided_by")

  array = string.split.map do |word|
    if word.to_i.to_s == word
      word.to_i
    else
      numbers.include?(word) ? numbers.index(word) : hash[word.to_sym]
    end
  end

  order_of_operations(array) if array.any? { |item| ["/", "*"].include?(item) }

  recursion_excursion(array)
end


def recursion_excursion(array)
  return array[0] if array.size == 1
  result = [array[0], array[2]].reduce(array[1])
  array[0,3] = result
  recursion_excursion(array)
end



def order_of_operations(array)
  index = array.index { |item| ["/", "*"].include?(item) }
  return array if index == nil

  sub_array = array[(index-1)..(index+1)]
  result = recursion_excursion(sub_array)
  array[(index-1), 3] = result
  # array[(index-1), 3] = recursion_excursion(array[(index-1)..(index+1)]) # not used because too dense

  order_of_operations(array)

end


p computer("two plus two")    == 4
p computer("seven minus six") == 1
p computer("zero plus 8") == 8
p computer("two plus two minus three") == 1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") == 15

# p computer("eight times four plus six divided by two minus two") == 17
# p computer("one plus four times two minus two") == 8
# p computer("nine divided by three times six") == 18

p computer("eight times four plus six divided by two minus two") == 33
p computer("one plus four times two minus two") == 7
p computer("nine divided by three times six") == 18
p computer("seven plus four divided by two") == 9
p computer("seven times four plus one divided by three minus two") == 26
p computer("one plus four times three divided by two minus two") == 5
p computer("nine divided by three times six") == 18


# how would you follow the order of operations?
# process them first
# replace them in the array.
# then go lef to right
