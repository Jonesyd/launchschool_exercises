def my_method(a, b = 2, c = 3, d )
  p [a, b, c, d]
end

my_method(4, 5, 6)

# non default, and then default left to right.
# should return 4, 5, 3, 6
