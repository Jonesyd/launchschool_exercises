def letter_percentages(str)
  hash = {}
  hash[:lowercase] = (str.count("a-z").to_f / str.size) * 100
  hash[:uppercase] = (str.count("A-Z").to_f / str.size) * 100
  hash[:neither]   = (str.count("^a-zA-Z").to_f / str.size) * 100
  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
