def star(integer)
  string = "*" * integer
  array = [string]
  count = string.size / 2

  count.times do |num|
    new_string = "*"
    new_string.prepend "*" + (" " * num)
    new_string += (" " * num) + "*"
    array.unshift(new_string)
    array.push(new_string)
  end

  array.each { |string| puts string.center(integer) }
end


star(7)
star(9)
