def twice(integer)
  integer.to_s.size.even? && double(integer) ? integer : integer * 2
end

def double(integer)
  string = integer.to_s
  half = string.size / 2
  string[0,half] == string[-half, half]
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
