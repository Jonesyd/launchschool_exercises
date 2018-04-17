def swapcase(string)
  new_string = ""
  array = string.chars
  counter = 0
  while counter < string.size
    if string[counter] == array[counter].upcase
      new_string << array[counter].downcase
    else
      new_string << array[counter].upcase
    end
    counter += 1
  end
  new_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
