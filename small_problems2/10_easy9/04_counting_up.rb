def sequence(integer)
  Array.new(integer) {|index| index + 1}
end



p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
