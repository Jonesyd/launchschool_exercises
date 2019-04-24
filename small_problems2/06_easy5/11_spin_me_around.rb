def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

original_string = "hello world"
new_string =  spin_me(original_string)
p new_string == original_string

# strings are different.
