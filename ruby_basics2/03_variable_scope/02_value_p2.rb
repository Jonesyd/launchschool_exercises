a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# still 7
# reasignment does not mutate.