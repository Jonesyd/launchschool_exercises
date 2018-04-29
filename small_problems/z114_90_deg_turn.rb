def rotate90(array)
  new_col  = array.count
  new_row  = array[0].count
  new_array = []

  (0...new_row).each do |row_index|
    current_row = []
      (0...new_col).reverse_each do |col_index|
      current_row << array[col_index][row_index]
    end
    new_array << current_row.flatten
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
