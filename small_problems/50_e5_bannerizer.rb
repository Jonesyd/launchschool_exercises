def print_in_box(string)
  length = string.length + 2
  puts "+#{''.center(length, "-")}+"
  puts "|#{''.center(length, " ")}|"
  puts "|#{string.center(length, " ")}|"
  puts "|#{''.center(length, " ")}|"
  puts "+#{''.center(length, "-")}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
