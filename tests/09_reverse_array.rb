 # For example, an exercise might be "reverse an array without using the built-in reverse method"

def reverse_array(array)
  new_array = []
  array.reverse_each do |element|
    new_array << element
  end
  new_array
end

 array = [1, 2, 3, 4]
 p reverse_array(array) == [4, 3, 2, 1]
