def merge(array1, array2)
  new_array = []
  array1_index_counter, array2_index_counter = 0, 0
  counter = 0 # assuming all array elements are positive integers

  until array1_index_counter == array1.size && array2_index_counter == array2.size

    while array1[array1_index_counter] == counter
      new_array << array1[array1_index_counter]
      array1_index_counter += 1
    end

    while array2[array2_index_counter] == counter
      new_array << array2[array2_index_counter]
      array2_index_counter += 1
    end

    counter += 1
  end

  new_array
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
