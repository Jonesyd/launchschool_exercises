def staggered_case(str)
  str.chars.map.each_with_index { |o, i| i.even? ? o.upcase : o.downcase }.join
end

# or...

def staggered_case(string)
  counter = 0
  array = string.chars.each_with_object([]) do |item, ary|
    counter.even? ? ary << item.upcase : ary << item.downcase
    counter += 1
  end
  array.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
