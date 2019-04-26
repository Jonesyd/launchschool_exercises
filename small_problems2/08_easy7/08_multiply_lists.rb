def multiply_list(array1, array2)
  new_array = array1.select { true }
  counter = -1
  new_array.map! do |item|
    counter += 1
    item * array2[counter]
  end
  new_array
end

def multiply_list(array1, array2)
  array1.zip(array2).map { |arr| arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
