def print_in_box(string)
  length = string.size + 2
  puts top_bottom = "+#{"".center(length, "-")}+"
  puts empty      = "|#{"".center(length, " ")}|"
  puts middle     = "|#{string.center(length, " ")}|"
  puts empty
  puts top_bottom
end


print_in_box('To boldly go where no one has gone before.')
print_in_box('')
