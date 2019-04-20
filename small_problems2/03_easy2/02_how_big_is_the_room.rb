def area(length, width)
  length * width
end

def feet_area(meters_squared)
  meters_squared * 10.7639
end

puts "Enter the length of the room in meters"
length = gets.chomp.to_f

puts "Enter the width of the room in meters"
width = gets.chomp.to_f

area_meters = area(length, width)
area_feet = feet_area(area_meters)

puts "The area of the room is #{area_meters.round(1)} square meters (#{area_feet.round(2)} square feet)"
