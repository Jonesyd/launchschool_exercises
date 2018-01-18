stoplight = ["green", "yellow", "red"].sample

puts case stoplight
when "green"
  "Go!"
when "yellow"
  "Slow down!"
else "red"
  "Stop!"
end
