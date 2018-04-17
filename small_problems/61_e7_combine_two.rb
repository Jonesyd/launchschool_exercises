def interleave(array1, array2)
  new_array = array1.dup
  counter = 1

  array2.each do |obj|
    new_array.insert(counter, obj)
    counter += 2
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
array_a = [1, 2, 3]
array_b = ['a', 'b', 'c']
p interleave(array_a, array_b)
p array_a
p array_b
p array_a == [1, 2, 3]
