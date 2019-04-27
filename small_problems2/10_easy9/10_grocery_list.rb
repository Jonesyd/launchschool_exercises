def buy_fruit(nested_array)
  new_array = []
  nested_array.each do |arr|
     arr[1].times { new_array << arr[0] }
  end
  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
