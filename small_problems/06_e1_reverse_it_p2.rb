 def reverse_words(string)
   new_array = []
   return nil unless string.is_a?(String)
   array = string.split
   array.each do |item|
     if item.length >= 5
       new_array.push(item.reverse)
     else
       new_array.push(item)
     end
   end
   new_array.join(" ")
 end

 puts reverse_words('Professional')          == "lanoisseforP"
 puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
 puts reverse_words('Launch School')         == "hcnuaL loohcS"
 puts reverse_words(1)         == nil

# Lessons
# 1. A better name for new_array is "words"
# 2. No need to use the variable array just go:
#       string.split.each ...
# 3. The block parameter could be called "word" instead of "item"
# 4. Could do the .reverse! and the push, e.g.:
#        word.reverse! if word.size >= 5
#        words << word
