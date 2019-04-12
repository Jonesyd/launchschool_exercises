a = "Xyzzy"

def my_value(b)
  b = "yzzyX"
end

my_value(a)
puts a

# "Xyzzy" as method does not change a. It is simply re-assigned.
