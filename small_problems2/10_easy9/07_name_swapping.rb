def swap_name(string)
  array = string.split
  array.unshift(array.pop).join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
