def block_word?(string)
  blocks = { B: "O", X: "K", D: "Q", C: "P", N: "A", G: "T", R: "E",
             F: "S", J: "W", H: "U", V: "I", L: "Y", Z: "M" }
  array = string.upcase.chars
  count = 0

    until count == string.size
      if blocks.key?(array[count].to_sym)
        blocks.delete(array[count])
      elsif blocks.value?(array[count])
        blocks.delete(blocks.key(array[count]))
      else
        return false
      end
      count += 1
    end

  true
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
