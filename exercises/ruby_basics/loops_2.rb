# Even or Odd?
count = 1

loop do
  even_odd = count.odd? ? "odd" : "even" 
  puts "#{count} is #{even_odd}!"
  count += 1
  break if count > 5
end

# Catch the number
loop do
  number = rand(100)
  puts number
  break if number <= 10 && number >= 0
 #break if number.between?(0,10)
end

# Conditional Loop
process_the_loop = [true, false].sample
if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed!"
end

# Get the Sum
=begin
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end 
end
=end
# solid answer, could've put hte last put statement at the end of loop and end if statement early

# Insert Numbers
=begin
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  if numbers.size == 5 then break end
end
puts numbers
=end

# Empty the Array
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.slice!(0)
 #puts names.shift 
  break if names.empty?
end
#array#shift would've been better but I wanted to try out slice!.

# Further Exploration
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.slice!(-1)
 #puts names.pop
  break if names.empty?
end

# Stop Counting
5.times do |index|
  puts index
  break if index == 2
end
# further exploration
5.times do |index|
  puts index
  break if index == 4
end
# counts up to 4 (0..4)
5.times do |index|
  puts index
  break if index < 7
end
# counts up to 0 then breaks

# Only Even
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
# Further Exploration
# numbers has to be incremented by 1 each iteration or else it'll be stuck at an odd number inifinitly
# if its before the puts statement then all numbers will be printed to screen

# First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if not (number_a != 5 || number_b != 5)
  puts "5 was reached!"
  break 
end

# Further Exploration
=begin
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_b == 5 || number_a == 5
    puts "5 was reached!"
    break
  end
end
=end

# Greeting
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
count = 0
while count < number_of_greetings
  count += 1
  greeting
end


# decremental Counter
number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end