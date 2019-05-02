def transpose(array)
  no_of_columns, no_of_rows    = array[0].size, array.size
  row_counter,   col_counter   = 0, 0
  new_array = Array.new(no_of_columns) { [] }

  until row_counter == no_of_rows
    until col_counter == no_of_columns
      new_array[col_counter][row_counter] = array[row_counter][col_counter]
      col_counter += 1
    end
    row_counter += 1
    col_counter = 0
  end

  new_array
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
