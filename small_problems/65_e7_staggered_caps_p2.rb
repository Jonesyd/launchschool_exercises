def staggered_case(string)
  ucase = true
  array = string.chars.each_with_object([]) do |item , ary|
    if item =~ /\s/ || item =~ /[^a-zA-Z]/
      ary << item
      next
    end
    ucase ? ary << item.upcase : ary << item.downcase
    ucase = !ucase
  end
  array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
