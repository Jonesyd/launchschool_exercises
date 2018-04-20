def diamond(integer)
  stars, counter, toggle = 1, 1, true

  while counter <= integer
    puts "#{'*' * stars }".center(integer)
    toggle ? stars += 2 :  stars -= 2
    toggle = false if stars == integer
    counter += 1
  end
end

diamond(1)
diamond(3)
diamond(9)
