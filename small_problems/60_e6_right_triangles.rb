def triangle(num)
  counter = 1
  while counter <= num
    puts "#{'*' * counter}".rjust(num)
    counter += 1
  end
end

triangle(9)
triangle(5)
