# Tip Calculator
print 'What is the bill? '
bill = gets.chomp.to_f
print 'What is the tip percentage? '
tip_percentage = gets.chomp.to_f

tip = (bill * (tip_percentage / 100.00)).round(2)
total = (tip + bill).round(2)

puts "The tip is $#{format('%.2f',tip)}" 
puts "The total is $#{format('%.2f',total)}"