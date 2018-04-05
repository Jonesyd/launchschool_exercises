def running_total(array)
  return array if array.count == 0 || array.count == 1
  counter = 0
  new_array = []
  array.each_with_index do |num, index|
    if index == 0
      new_array << num
      next
    end
    new_array << num + new_array[counter]
    counter += 1
  end
  new_array
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
