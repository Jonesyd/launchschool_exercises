50.times do
  stoplight = ["green", "yellow", "red"].sample
  puts  case stoplight
        when "green"  then "go"
        when "yellow" then "Slow down!"
        when "red"    then "Stop!"
        end
end
