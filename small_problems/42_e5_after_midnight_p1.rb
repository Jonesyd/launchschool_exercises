def plus_24(num)
  if num < 0
    num += 24
    plus_24(num)
  else
    num
  end
end

def time_of_day(integer)
  hours, mins = integer.divmod(60)

  days, hours = hours.divmod(24) if hours >= 24
  hours = plus_24(hours) if integer < 0

  array = [mins, hours]
  hour = array.fetch(1) { 0 }
  array = [mins, hour]

  format("%02d:%02d", array[1], array[0])
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
