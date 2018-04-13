def crunch(string)
  array = string.split.map do |word|
    new_word = ""
    counter = 0
    word.each_char do |letter|
      new_word << letter unless letter == word[counter + 1]
      counter += 1
    end
    next new_word if counter == word.length
  end
  array.join(" ")
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
