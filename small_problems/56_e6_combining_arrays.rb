def merge(array1, array2)
  new_array = []
  [array1, array2].each do |arr|
    arr.each { |obj| new_array << obj }
  end
  new_array.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
