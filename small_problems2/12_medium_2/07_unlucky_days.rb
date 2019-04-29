require "date"

def friday_13th(year)
  array = []
  12.times { |month| array << 1 if Date.new(year, month + 1, 13).friday? }
  array.sum
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
