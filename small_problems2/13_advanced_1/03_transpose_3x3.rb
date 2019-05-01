def transpose(array)
  new_array = [[],[],[]]

  array.each do |row|
    column = 0
    row.each do |element|
      new_array[column] << element
      column += 1
    end
  end

  new_array
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [ [1, 4, 3],
                [5, 7, 9],
                [8, 2, 6]]

p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
