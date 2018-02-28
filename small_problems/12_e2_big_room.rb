def square_meters_to_feet(meters)
  meters.to_f * 10.7639
end

def area(length, width)
  length * width
end

puts "Enter the length of the room in meters:"
length = gets.to_f

puts "Enter the width of the room in meters:"
width = gets.to_f

area = area(length, width).round(1)
feet_area = square_meters_to_feet(area).round(2)

puts "The area of the room is #{area} square meters (#{feet_area} square feet)."
