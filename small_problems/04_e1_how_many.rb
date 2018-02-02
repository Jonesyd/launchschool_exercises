def count_occurrences(array)  #returns a hash
  return nil if array.is_a?(Array) == false || array.empty?
  hash = {}
  array.each do |array_item|
    if hash.has_key?(array_item)
      hash[array_item] = hash[array_item] + 1
    else
      hash[array_item] = 1 #must be an integer
    end
  end
  hash.each do |k,v|
    puts "#{k} => #{v}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)

# returns:  car => 4
#           truck => 3
#           SUV => 1
#           motorcycle => 2
#
# puts count_occurrences([]) == nil
# puts count_occurrences("car") == nil
# puts count_occurrences(1) == nil
# puts count_occurrences(nil) == nil
# puts count_occurrences(0) == nil
# puts count_occurrences(true) == nil
# puts count_occurrences(false) == nil
# puts count_occurrences({}) == nil
# puts count_occurrences({"a" => "b"}) == nil
# count_occurrences([1, 1]) #=> "1 => 2"
