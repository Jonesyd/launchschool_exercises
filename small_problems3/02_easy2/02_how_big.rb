# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

conversion_to_feet = 10.7639
meter_area = (length * width).round(1)
square_feet = (meter_area * conversion_to_feet).round(2)

puts "The area of the room is #{meter_area} square meters (#{square_feet} square feet)."
