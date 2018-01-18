require 'active_support/inflector'

words = 'car human elephant airplane'
words = words.split(" ")


words.each do |word|
  puts word.pluralize
end
