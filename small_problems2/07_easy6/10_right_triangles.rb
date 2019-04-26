def triangle(integer)
  string = "*"
  integer.times do
    puts string.rjust(integer)
    string << "*"
  end
end

triangle(5)
triangle(9)
