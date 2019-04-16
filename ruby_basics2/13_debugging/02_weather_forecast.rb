def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy"
  end
end

# "false" is a string and is truthy
20.times { predict_weather }
