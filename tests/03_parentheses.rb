# write a method that takes a string, and returns a boolean indicting whether the string has a balanced set of parentheses

def balancer(string)
  new_string = string.gsub(/[^\(\)]/, "")
  string.size.times { new_string.gsub!(/\(\)/, "") }
  new_string.empty?
end


p balancer("hi") == true
p balancer("(hi") == false
p balancer("(hi)") == true
p balancer(")hi()") == false
