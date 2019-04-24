
def after_midnight(string)
  hours, minutes = convert_to_hours_minutes(string)
  integer = hours * 60 + minutes
  integer == 1440 ? 0 : integer
end

def before_midnight(string)
  hours, minutes = convert_to_hours_minutes(string)
  integer = 1440 - (hours * 60 + minutes)
  integer == 1440 ? 0 : integer
end

def convert_to_hours_minutes(string)
  hours, minutes = string[0..1].to_i, string[3..4].to_i
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
