def balanced?(string)
  new_string = string.delete("^()")
  new_string.size.times { new_string.gsub!(/\(\)/, "") } # overkill
  new_string.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ()))((()') == false
