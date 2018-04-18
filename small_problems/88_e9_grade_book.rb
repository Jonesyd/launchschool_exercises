def get_grade(int1, int2, int3)
  average = [int1, int2, int3].reduce(:+).to_f / 3
  marks(average)
end

def marks(score)
  case score
  when 90..100 then "A"
  when 80..90  then "B"
  when 70..80  then "C"
  when 60..70  then "D"
  when 0..60   then "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
