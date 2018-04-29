def transpose(array)
  new_array = []
  new_row_max_index = array[0].count
  new_col_max_index = array.count

  (0...new_row_max_index).each do |row_index|
    new_row = (0...new_col_max_index).map do |column_index|
      array[column_index][row_index]
    end
    new_array << new_row
  end
  new_array
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
