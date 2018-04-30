def merge_sort(array)
  return array if array.size == 1
  mid = array.size / 2
  size = array.size

  array1 = array[0...mid]
  array2 = array[mid...size]

  array1 = merge_sort(array1)
  array2 = merge_sort(array2)

  merge(array1, array2)

end

def merge(array_a, array_b)
  a_size, b_size = array_a.size, array_b.size
  a_count, b_count = 0, 0
  result = []

  while a_count < a_size || b_count < b_size do
    a, b = array_a.at(a_count), array_b.at(b_count)

    case
    when a == nil then result << b && b_count += 1
    when b == nil then result << a && a_count += 1
    when a > b    then result << b && b_count += 1
    when a < b    then result << a && a_count += 1
    else               result << a && a_count += 1
    end

  end
  result
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
