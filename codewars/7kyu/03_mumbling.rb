# This time no story, no theory. The examples below show you how to write function accum:

# sting
# split into an array
# iterate over the array
# use a counter or the index
# multiply the string by the counter
# sting

def accum(s)
	s.chars.map.with_index { |char, index| (char * (index + 1)).capitalize }.join("-")
end

p accum("abcd") == "A-Bb-Ccc-Dddd"
p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt") == "C-Ww-Aaa-Tttt"
