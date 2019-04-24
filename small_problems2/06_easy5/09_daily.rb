def crunch(string)
  array           = string.chars
  current_letter  = ""
  new_array       = []

  array.each do |chr|
    new_array << chr if chr != current_letter
    current_letter = chr
  end

  new_array.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
