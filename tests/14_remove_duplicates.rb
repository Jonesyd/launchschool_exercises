# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

# convert into an array
# iterate over the array
# map if item == item + 1
# counter and until loop

def remove_duplicates(string)
  counter = string.size - 1
  array = string.chars
  new_array = []

  until counter < 0

    new_array.unshift(array[0]) if counter == 0

    if array[counter] == array[counter - 1]
      counter -= 1
      next
    else
      new_array.unshift(array[counter])
    end

    counter -= 1
  end

  new_array.join
end


p remove_duplicates("stress") == "stres"
p remove_duplicates("sstress") == "stres"
