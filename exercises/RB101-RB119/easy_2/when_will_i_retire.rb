# When will i Retire?
print "What is your age? "
age = gets.chomp.to_i
print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

t = Time.now.year
years_to_retire = retirement_age - age
retirement_year = t + years_to_retire

puts "It's #{t}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retire} years of work to go!"