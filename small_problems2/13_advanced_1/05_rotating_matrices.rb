def rotate90(array)
  row_count = array.size
  col_count = array[0].size
  new_array = Array.new(col_count) { [] }
  col_counter = 0
  row_counter = 0

  until row_counter == row_count
    until col_counter == col_count
      new_array[col_counter].unshift(array[row_counter][col_counter])
      col_counter += 1
    end
    row_counter += 1
    col_counter = 0
  end

  new_array
end




matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
