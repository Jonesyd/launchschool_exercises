def diamond(integer)
  array = []
  count = 1

  until count > integer
    stars = ("*" * count).center(integer)
    count == integer ? array.insert(-count/2, stars) : array.insert(-count/2, stars, stars)
    count += 2
  end

  puts array
end

p diamond(1)
p diamond(3)
p diamond(9)
