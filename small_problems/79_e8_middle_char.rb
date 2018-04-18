def center_of(string)
  count = string.size
  mid = count / 2
  str = count % 2 == 1 ? string[mid] : string.slice(mid -1, 2)
end

p center_of('Launch') == 'un'
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
