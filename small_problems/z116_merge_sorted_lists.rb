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

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
