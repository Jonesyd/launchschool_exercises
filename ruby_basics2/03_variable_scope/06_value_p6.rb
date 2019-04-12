a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# retunr an error as method does not know the value of a. If a is meant to be used in the method, then it needs to be passed in as an argument.
