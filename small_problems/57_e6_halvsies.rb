def halvsies(array)
  array1, array2, count, size = [], [], 0, array.count
  num = size.even? ? size / 2 - 1 : size / 2
  while count < size
    count <= num ? array1 << array[count] : array2 << array[count]
    count += 1
  end
  [array1, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
