# Breakfast, Lunch, or Dinner? (Part 1)
def meal
  return 'Breakfast'
end

puts meal
#prints out: Breakfast

# Breakfast, Lunch, or Dinner? (Part 2)
def meal
  'Evening'
end

puts meal
# prints: Evening

# Breakfast, Lunch, or Dinner? (Part 3)
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
# prints: Breakfast

# Breakfast, Lunch, or Dinner? (Part 4)
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
#prints: Dinner \n Breakfast

# Breakfast, Lunch, or Dinner? (Part 5)
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
#puts: Dinner \n nil

# Breakfast, Lunch, or Dinner? (Part 6)
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
#Prints: Breakfast

# Counting Sheep (Part 1)
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
# counts from 0..5; counts 6 numbers total due to the last puts statement outside of method
# return value is 5
# Counting Sheep (Part 2)
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
# counts 0 ..4 then 10

# Counting Sheep (Part 3)
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
#return is nil? so 0..2? then nil

# Tricky Number
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
#puts 1? because else statement gets skipped
# if true -> false and else statement gets run, then 2 is printed