def interleave(array1, array2)
  new_array = array1.select { true }
  counter = 1
  array2.each do |item|
    new_array.insert(counter, item)
    counter += 2
  end
end

# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end
#
# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
