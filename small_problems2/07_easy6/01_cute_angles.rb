def number_and_balance(number)
  array = number.to_s.split(".")
  array[1] = "0" if array[1] == nil
  degrees, balance = array[0], array[1]
end

def conver_to_60s(string)
  length = string.length.to_f
  number = 10 ** length
  fraction = string.to_i / number
  fraction * 60
end

def build_array(number)
  array = []

  degrees, balance = number_and_balance(number)
  array << degrees.to_i

  minutes_float = conver_to_60s(balance)
  minutes, balance = number_and_balance(minutes_float)
  array << minutes.to_i

  seconds = conver_to_60s(balance).round
  array << seconds
end

def format_array(array)
  "%d#{DEGREE}%02d'%02d\"" % array
end

def dms(number)
  array = build_array(number)
  format_array(array)
end

DEGREE = "\xC2\xB0"

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# divmod would be easier.
