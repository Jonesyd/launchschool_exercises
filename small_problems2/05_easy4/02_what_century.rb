def century(integer)
  century = find_century(integer)
  century.to_s + find_suffix(century)
end

def find_century(integer)
  integer % 100 == 0 ? integer / 100 : integer / 100 + 1
end

def find_suffix(century)
  return "th" if (11..13).include?(century.to_s[-2,2].to_i)
  { 1 => "st", 2 => "nd", 3 => "rd" }.fetch(century.to_s[-1].to_i, "th")
end



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
