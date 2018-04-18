def double_consonants(string)
  new_array = []
  string.chars.each do |chr|
    if chr =~ /[b-df-hj-np-tv-z]/i
      new_array << chr << chr
    else
      new_array << chr
    end
  end
  new_array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
