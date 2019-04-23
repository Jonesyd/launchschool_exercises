# Further Exploration

def hexadecimal_to_integer(string)
  array = convert_to_array(string)
  build_integer(array)
end

def value_hash
  { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
    "A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14, "F" => 15
  }
end

def convert_to_array(string)
  array = []
  string.upcase.each_char { |char| array << value_hash[char] }
  array
end

def build_integer(array)
  counter = 0
  new_array = []
  array.reverse_each do |item|
    counter == 0 ? new_array << item : new_array.unshift(item * (16 ** (counter)))
    counter += 1
  end
  new_array.sum
end

p hexadecimal_to_integer('4D9f') == 19871
