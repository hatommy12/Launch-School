# Repeat_after_me
=begin
puts "Type anything you want"
input = gets.chomp
puts input
=end 

# Your Age in Months
=begin
puts "What is your age in years:"
age_in_years = gets.chomp.to_i
puts "You're #{age_in_years*12} months old"
# further exploration
# it should prompt a type error but it returns 0 instead.
=end

# Print something(Part 1)
=begin
puts "Do you want me to print something? (y/n)"
input = gets.chomp.downcase
if input == 'y' then puts "something" end
#Further exploration
# input should get downcase in order to accomodate a 'Y', or else "something" will not be printed
=end 

# Print Something(Part 2)
=begin
loop do
  puts "Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  if input == 'y'
    puts "something"
    break
  elsif input == 'n'
    break
  end
  puts "That's an invalid input, please type (y/n)"
end

#provided answer uses %w to create an array of strings and include? to see if its in the array
choice = nil
loop do
  puts "Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts "That's an invalid input, please type (y/n)"
end
puts "something" if choice == 'y'
=end

# Launch School Printer (Part 1)
=begin
input = 0
loop do
  if input >= 3
    input.times { puts "Launch School is the best!! I'll totally subscribe!"}
    break
  else
    puts "How many output lines do you want? Enter a number >= 3:"
    input = gets.chomp.to_i
    puts "That's not enough lines!"
  end
end
=end

# Passwords
=begin
PASSWORD = "password123"
loop do
  puts ">> Please enter your password"
  password = gets.chomp
  if password == PASSWORD
    puts "Welcome!"
    break
  end
  puts "Invalid Password!!"
end
=end

# User Name and Password
=begin
PASSWORD = "password123"
USERNAME = "tomtom"

loop do
  puts ">> Please enter your username"
  username = gets.chomp.downcase
  puts ">> Please enter your password"
  password = gets.chomp
  break if password == PASSWORD && username == USERNAME
  puts "Authorization Failed!"
end

puts "Welcome!"
=end

# Dividing Numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# my solution but i didn't realize i needed to loop to ask for input again.
# didn't read the example properly, redid next section
=begin
puts "Please enter the numerator:"
numerator = gets.chomp
puts "Please enter the denominator:"
denominator = gets.chomp
if valid_number?(numerator) && valid_number?(denominator)
  result = numerator.to_i / denominator.to_i
  puts "#{numerator} / #{denominator} is #{result}"
else
  puts "Invalid input. Only integers allowed"
end
=end

=begin
numerator = 0
denominator = 0
loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers allowed"
end

loop do
  puts "Please enter the denominator"
  denominator = gets.chomp
  if denominator == "0"
    puts "Invalid input. A denominator of 0 is not allowed."
    next
  end
  break if valid_number?(denominator)
  puts "Invalid input. Only integers allowed"
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
=end

# Launch School Printer (Part 2)
=begin
number_of_lines = nil

until %w[q Q].include?(number_of_lines)
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    number_of_lines = gets.chomp
    break if %w[q Q].include?(number_of_lines)
    break if number_of_lines.to_i >= 3
    puts ">> That's not enough lines."
  end
  
  break if %w[q Q].include?(number_of_lines)
  
  number_of_lines = number_of_lines.to_i
  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
# thoguhts; it's not the prettiest but I adjusted the code provided and I used something 
# i wans't familair with; %w and include?
=end 

# Opposites Attract
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def user_num
  puts "Please enter a positive or negative number"
  num = gets.chomp
  puts "Invalid input. Only non-zero integers are allowed." if num == '0'
  return num if valid_number?(num)
end

num1 = nil
num2 = nil
loop do
  num1 = user_num
  num2 = user_num
  
  user_numbers = [num1.to_i, num2.to_i]
  if user_numbers.select {|n| n.positive? }.empty? || user_numbers.select {|n| n.negative? }.empty?
    puts "Sorry. One integer must be positive, one must be negative"
    next
  end
  break
end

answer = num1.to_i + num2.to_i
puts "#{num1} + #{num2} = #{answer}"

