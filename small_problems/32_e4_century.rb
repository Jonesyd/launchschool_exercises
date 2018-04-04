def century_number(integer)
  num = if integer == 0
          1
        elsif integer % 100 == 0
          integer / 100
        else
          integer / 100 + 1
        end
end

def century(integer)
  num = century_number(integer).to_s
  suffix = {th: "th", st: "st", nd: "nd", rd: "rd" }
  cent = if ["11", "12", "13"].include?(num.slice(-2,2))
           num + suffix[:th]
         elsif ["1"].include?(num.slice(-1))
           num + suffix[:st]
         elsif ["2"].include?(num.slice(-1))
           num + suffix[:nd]
         elsif ["3"].include?(num.slice(-1))
           num + suffix[:rd]
         else
           num + suffix[:th]
         end
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
