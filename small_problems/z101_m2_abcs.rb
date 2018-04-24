BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"],
          ["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"],
          ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"],
          ["Z", "M"]]

def block_word?(string)
  letters = BLOCKS.dup
  chars   = string.chars.map(&:upcase)
  results = []

  chars.each do |char|
    results << letters.flatten.include?(char) ? true : false
    letters.delete_if { |sub_array| sub_array.include?(char) }
  end
  results.all?
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
