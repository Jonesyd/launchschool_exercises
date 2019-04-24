def time_of_day(integer)
  hours, minutes = integer.divmod(60)
  hours >= 0 ? hours = remove_day(hours) : hours = convert_to_positive(hours)
  "%02d:%02d" % [hours, minutes]
end

def remove_day(hours)
  return hours if hours.between?(0,24)
  hours = hours - 24
  remove_day(hours)
end

def convert_to_positive(hours)
  hours = 24 + hours
  return hours if hours.between?(0,24)
  convert_to_positive(hours)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
