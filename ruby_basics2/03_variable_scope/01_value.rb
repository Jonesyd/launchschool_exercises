a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# why?
# the b variable's scope is limited to the method. The method doesn't change the scope of varialbes outside of it's scope.
