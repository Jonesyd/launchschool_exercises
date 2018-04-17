def multiply_list(ary1, ary2)
  ary1.map.with_index { |obj, idx| obj * ary2[idx] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
