# how big is the room?
=begin
SQMETERS_TO_SQFEET = 10.7639
puts "Enter the length of the room in meters: "
length = gets.chomp.to_f
puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

area_sqmeters = length * width
area_sqfeet = (area_sqmeters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_sqmeters} (#{area_sqfeet})."
=end

# Further Exploration
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

puts "Enter the length of the room in feet: "
length = gets.chomp.to_i
puts "Enter the width of the room in feet: "
width = gets.chomp.to_i

sqfeet = length * width
sqinches = sqfeet * SQFEET_TO_SQINCHES
sqcentimeters = sqfeet * SQFEET_TO_SQCENTIMETERS

puts "The square feet of the room is #{sqfeet} (#{sqinches} square inches, or #{sqcentimeters} square centimeters."