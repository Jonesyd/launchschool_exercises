def transpose(array)
  new_array = []
  num = array.count - 1

  (0..num).each do |column_index|
    new_row = (0..num).map do |row_index|
      array[row_index][column_index]
    end
    new_array << new_row
  end
  new_array
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

matrix2 = [
  [1, 5, 8, 9],
  [4, 7, 2, 8],
  [3, 9, 6, 7],
  [9, 4, 5, 6]
]

p transpose(matrix2)
