20.times do
  status = ["awake", "tired"].sample
  now = status == "awake" ? "Be productive!" : "Go to sleep!"
  puts now
end
