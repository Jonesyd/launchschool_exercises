def star(integer)
  count         = 1
  mid           = integer / 2
  string_array  = []

  while count <= mid do
    ary = Array.new(integer, " ")
    ary[count - 1], ary[mid], ary[-count]  = "*", "*", "*"
    string_array << ary.join
    count += 1
  end

  string_array.each { |array| puts array }
  puts "*" * integer
  string_array.reverse_each { |array| puts array }

  nil
end

p star(9)
p star(7)
p star(27)
