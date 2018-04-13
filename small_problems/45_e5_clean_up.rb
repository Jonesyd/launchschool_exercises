def cleanup(string)
  string.gsub(/\W/, " ").gsub(/\s{2,}/, " ")
end

p cleanup("---what's my +*& line?") == ' what s my line '
