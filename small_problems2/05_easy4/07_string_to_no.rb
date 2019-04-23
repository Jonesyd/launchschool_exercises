def string_to_integer(string)
  array = convert_to_array(string)
  build_integer(array)
end

def value_hash
  { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9  }
end

def convert_to_array(string)
  array = []
  string.each_char { |char| array << value_hash[char] }
  array
end

def build_integer(array)
  counter = 0
  new_array = []
  array.reverse_each do |item|
    counter == 0 ? new_array << item : new_array.unshift(item * (10 ** counter))
    counter += 1
  end
  new_array.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('57010') == 57010
