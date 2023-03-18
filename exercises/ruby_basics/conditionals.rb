# Unpredictable Weather (part 1)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun.include?("visible")

# Unpredictable Weather (Part 2)
sun = ['visible', 'hidden'].sample
puts "The clouds are blocking the sun!" unless sun.include?("visible")

# Unpredictable Weather (Part 3)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == 'visible'

# True or False
boolean = [true, false].sample
result = boolean ? "I'm true!" : "I'm false!"
puts result

# Truthy Number
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end
# puts "My favorite number is 7.; because 7 is technically true; everything is true besides false and nil"

# Stoplight(part1)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when 'green'
  puts "GO!"
when 'yellow'
  puts "Slow down!"
when 'red'
  puts 'Stop!'
end

# Stoplight (Part 2)
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# SLeep Alert
status = ['awake', 'tired'].sample
command = if status == 'awake'
            "Be productive!"
          else
            "Go to sleep!"
          end
puts command

# Code Numbers
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# Stoplight (Part 3)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts "Go!"
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end

# this is for one action only and it's good for readability