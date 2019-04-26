
def merge(array1, array2)
  array_array, new_array = [array1, array2], []

  array_array.each do |array|
    array.each { |item| new_array << item unless new_array.include?(item) }
  end

  new_array
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
