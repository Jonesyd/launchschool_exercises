def oddities(array)
  new_array = []
  array.each_with_index do |item, index|
    new_array << item if index.even?
  end
  new_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 2, 1]) == [1, 2]
