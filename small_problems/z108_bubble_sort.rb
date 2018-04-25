def bubble_sort!(ary)
  tail = 0

  loop do
    count = 0
    results = []

    while count < ary.count - 1 - tail
      if (ary[count] <=> ary[count + 1]) == 1
        ary[count], ary[count +1] = ary[count + 1], ary[count]
        results << 1
      end
      count += 1
    end

    break if results.none?
    tail += 1
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
