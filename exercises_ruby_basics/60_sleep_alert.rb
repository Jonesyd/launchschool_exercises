status = ["awake", "tired"].sample

result = if status == "awake"
  "Be productive"
else
  "Go to sleep!"
end


puts result


result2 = status == "awake" ? "Be productive" : "Go to sleep!"

puts result2
