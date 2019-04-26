def penultimate(string)
  array = string.split
  count = array.size
  array[count -2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
