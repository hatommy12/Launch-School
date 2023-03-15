# Runaway Loop
loop do
  puts 'Just keep printing...'
  break
end

# Loopception
loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# Control the Loop
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

# Loop on Command
=begin
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "answer 'yes' to stop"
end
=end

# Say Hello
say_hello = true
counter = 1
while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 5
end

# faster way is to use the time method
5.times do
  puts 'Hello!'
end

# Print While
numbers = []
prng = Random.new
while numbers.size < 5 do
  numbers.push(prng.rand(0..99))
end

puts numbers

# Count Up
count = 1

until count == 11
  puts count
  count += 1
end

# Print Until
numbers = [7, 9, 13, 25, 18]
=begin
numbers.push(0)
i = 0
until numbers[i] == numbers[-1] do
  puts numbers[i]
  i += 1
end
=end
# I'm not particularly proud of this code; I feel like it's not realy efficient and it adds another value to the list that doens't really contribute anything

=begin
until numbers.size < 1 do
  puts numbers.shift
end
=end

count = 0
until count == numbers.size do
  puts numbers[count]
  count += 1
end

# That's Odd
for i in 1..100
  puts i if i.odd?
end

# Greet your Friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends do
  puts "Hello, #{name}!"
end