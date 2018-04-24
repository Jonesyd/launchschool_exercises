require "date"

def friday_13th(year)
  black_fridays = 0
  counter = 1

  while counter <= 12
    date = Date.new(year, counter, 13)
    black_fridays += 1 if date.friday?
    counter += 1
  end

  black_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

p friday_13th(2018)
