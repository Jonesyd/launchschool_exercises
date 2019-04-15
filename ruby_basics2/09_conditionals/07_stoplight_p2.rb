20.times do
  stoplight = ["green", "yellow", "red"].sample

  if stoplight == "green"
    puts "Go!"
  elsif stoplight == "yellow"
    puts "Slow down!"
  else stoplight == "red"
    puts "Stop!"
  end
end
