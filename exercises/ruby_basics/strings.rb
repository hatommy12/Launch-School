# Create a String
empty_string = ''

# Quote Confusion
puts "It's now 12 o'clock."

#Ignoring Case
name = 'Roger'
puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

# Dynamic String
name = 'Elizabeth'

puts "Hello, #{name}!"

# Combining Names
first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

list_name = []
list_name.push(first_name)
list_name.push(" ")
list_name.push(last_name)
list_name.each { |element| print element}
print "\n"

puts first_name + ' ' + last_name

first_name << " "
first_name << last_name
puts first_name


# Tricky Formatting
state = 'tExAs'
state.capitalize!
puts state

# Goodbye, not Hello
greeting = 'Hello!'
greeting.replace('Goodbye!')
puts greeting

greeting = 'Hello!'
greeting.gsub!("Hello", 'Goodbye')
puts greeting

# Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.chars
puts alphabet.split('')

# Pluralize
words = 'car human elephant airplane'
words_array = words.split(' ')
words_array.each { |words| puts "#{words}s" }

# Are you there?
colors = 'blue pink yellow orange'
puts colors.downcase.split(' ').include?("yellow")
puts colors.downcase.split(' ').include?("purple")
# Further Exploration
colors = 'blue boredom yellow'
puts colors.include?('red')
# outcome should be true because red is in boREDom; if we split it in an array, it should be false?
puts colors.split(' ').include?('red')
# indeed false