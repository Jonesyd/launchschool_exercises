def find_fibonacci_index_by_length(integer)
  previous_num, fibonacci_number, index = 1, 1, 2
  fibonacci_length = fibonacci_number.to_s.size

  while fibonacci_length < integer
    fibonacci_number, previous_num = fibonacci_number + previous_num, fibonacci_number
    fibonacci_length = fibonacci_number.to_s.size
    index += 1
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
