# You have an array of numbers.
# Your task is to sort ascending odd numbers but even numbers must be on their places.
#
# Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.
#
# Example


def sort_array(array)
  odd_array = array.select { |num| num.odd? }.sort!
  counter = -1

  array.map do |num|
    if num.odd?
      counter += 1
      odd_array[counter]
    else
      num
    end
  end

end



p sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
p sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
p sort_array([]) == []
