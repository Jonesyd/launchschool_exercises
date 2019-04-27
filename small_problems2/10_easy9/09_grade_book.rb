def get_grade(int1, int2, int3)
  array = [int1, int2, int3]
  average = array.sum / array.count.to_f
  case
  when average < 60 then "F"
  when average < 70 then "D"
  when average < 80 then "C"
  when average < 90 then "B"
  when average <= 100 then "A"
  else "not graded, check inputs"
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
