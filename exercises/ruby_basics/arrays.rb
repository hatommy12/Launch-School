# New Pet
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

# More Than One
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = [pets[2], pets[3]]
my_pets = pets[2..3] + pets[0...1]
puts my_pets
puts "I have a pet " + my_pets[0] + " and a pet " + my_pets[1] + "!"

# Free the Lizard
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.delete_at(-1)
puts "I have a pet #{my_pets[0]}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
puts "I have a pet #{my_pets[0]}!"

# One isn't Enough
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"

# What color are you?
colors = ['red', 'yellow', 'purple', 'green']
colors.each { |color| puts "I'm the color #{color}!"}

# doubled
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map { |num| num * 2}
p doubled_numbers

# Divisble by three
numbers = [5, 9, 21, 26, 39]
divisble_by_three = numbers.select { |num| num % 3 == 0}
p divisble_by_three

# Favorite Number (Part 1)
favorite_num = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
[['Dave', 7],['Miranda', 3],['Jason', 11]]

employee_num = []
i = 0
while i < 5
  name_number = favorite_num[i..(i + 1)]
  employee_num.push(name_number)
  i += 2
end 

p employee_num

# employee_num = []
i = 0
while i < 5
  name_number = favorite_num[i..(i + 1)]
  employee_num.push(name_number)
  i += 2
end 

p employee_num

#employee_num = []
i = 0
while i < 5
  name_number = favorite_num[i..(i + 1)]
  employee_num.push(name_number)
  i += 2
end 

p employee_num

# Favorite Number (Part 2)
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten!

# Are We The Same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2  # => false