require "pry"
require "pry-byebug"

def featured(integer)
  return "Not possible" if integer >= 9_876_543_210
  number  = nil

  counter = integer + 1
  until counter.odd? && counter % 7 == 0
    counter += 1
  end

  while number.nil?
    if counter.to_s.chars.uniq.count == counter.to_s.chars.count
      number = counter
      break
    end
    counter += 14
  end

  number
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
