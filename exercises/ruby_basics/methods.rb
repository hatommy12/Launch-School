# Print Me (Part 1)
=begin
def print_me
  puts "I'm printing within the method!"
end

print_me
=end

# Print Me (Part 2)
def print_me
  "I'm printing the return value!"
end

puts print_me

# Greeting Through Methods (Part 1)
def return_hello
  "Hello"
end

def return_world
  "World"
end

puts return_hello + " " + return_world

# Greeting Through Methods (Part 2)
def greet
  return_hello + " " + return_world
end
puts greet

# Make and Model
def car(make, model)
  "#{make} #{model}"
end

puts car("Toyota", "Corolla")

# Day or Night
daylight = [true, false].sample

def time_of_day(boolean)
  day_or_night = boolean ? "It's daytime!" : "It's nighttime!"
  puts day_or_night
end

time_of_day(daylight)

# Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# Name not Found
def assign_name(name="Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# Multiply the Sum
def add(n1, n2)
  n1 + n2
end

def multiply(n1, n2)
  n1 * n2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# Random Sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(person)
  person.sample
end

def activity(activities)
  activities.sample
end

def sentence(person, activities)
  "#{person} went #{activities} today!"
end

puts sentence(name(names), activity(activities))