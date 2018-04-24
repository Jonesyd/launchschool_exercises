def balanced?(string)
  array = string.chars.select {|char| char =~ /\(|\)/ }
  return false if array.count.odd?

  counter = 0
  answer = []

  while counter < array.count
    counter += 1
    ary = array.take(counter)
    answer << false if ary.count(")") > ary.count("(")
  end

  answer.all?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
