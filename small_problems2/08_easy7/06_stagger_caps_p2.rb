def staggered_case(string)
  toggle = false

  array = string.chars.map do |char|
    if char.match(/[a-z]/i)
      toggle = !toggle
      toggle ? char.upcase : char.downcase
    else
      char
    end
  end

  array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
