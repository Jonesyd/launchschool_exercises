def letter_percentages(string)
  hash = Hash.new(0)
  total = string.size
  hash[:lowercase] += string.count("a-z")
  hash[:uppercase] += string.count("A-Z")
  hash[:neither]   += total - hash[:lowercase] - hash[:uppercase]
  hash.each { |key, value| hash[key] = (value / total.to_f * 100).round(2) }
  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
