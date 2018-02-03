def reverse_sentence(string)
  return nil unless string.is_a?(String)
  array = string.split(" ")
  new_array = []
  array.each {|item| new_array.unshift(item) }
  result = new_array.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


# Lessons
# 1. There is a reverse method on arrays
# 2. Look at the examples in more depth
# 3. Ingore constaints unless explicitly stated
# 4. Learn more methods
