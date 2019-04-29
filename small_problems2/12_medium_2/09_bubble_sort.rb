def bubble_sort!(array)
  count = array.size - 1

  until count == 0

    count.times do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num + 1], array[num]
      end
    end
    # optimised as largest num gets to the end, array[-1], after #times is finished.
    count -= 1
  end

  nil # array not returned as array is mutated.
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


array = [9, 6, 2, 7, 1, 4, 3]
bubble_sort!(array)
p array == [1, 2, 3, 4, 6, 7, 9]
