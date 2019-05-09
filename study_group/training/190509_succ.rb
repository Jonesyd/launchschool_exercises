# p find_missing_letter(['a','b','c','d','f']) # -> 'e'
# #find_missing_letter(['O','Q','R','S']) # -> 'P'
#


def find_missing_letter(array)

  counter = 1

  array.each do |letter|
    if letter.succ == array[counter]
      counter += 1
      next
    else
      return letter.succ
    end
  end
end


p find_missing_letter(['a','b','c','d','f']) == 'e'
p find_missing_letter(['O','Q','R','S']) == 'P'
