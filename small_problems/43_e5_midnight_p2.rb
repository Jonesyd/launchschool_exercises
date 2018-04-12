DAY_MINUTES = 1440

def before_midnight(string)
  hours = string[0..1].to_i
  return nil if hours > 24
  minutes = string[3..4].to_i
  return nil if minutes > 59

  total_minutes = hours * 60 + minutes
  total_minutes == 0 ? 0 : DAY_MINUTES - total_minutes
end

def after_midnight(string)
  hours = string[0..1].to_i
  return nil if hours > 24
  minutes = string[3..4].to_i
  return nil if minutes > 59

  total_minutes = hours * 60 + minutes
  total_minutes == 1440 ? 0 : total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p before_midnight('25:00') == nil
p before_midnight('21:61') == nil
