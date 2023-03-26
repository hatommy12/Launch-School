# Sum or Product of Consecutive Integers
puts ">> Please enter an integer greater than 0:"
end_integer = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

=begin
if operator == 's'
  sum = 0
  1.upto(end_integer).each do |num|
    sum += num
  end 
  puts "The sum of the integers between 1 and #{end_integer} is #{sum}."
elsif operator == 'p'
  product = 1
  1.upto(end_integer).each do |num|
    product *= num
  end 
  puts "The product of the integers between 1 and #{end_integer} is #{product}."
end 
=end 

# Further Exploration
if operator == 's'
  sum = (1..end_integer).inject(:+)
  puts "The sum of the integers between 1 and #{end_integer} is #{sum}."
elsif operator == 'p'
  product = (1..end_integer).inject(:*)
  puts "The product of the integers between 1 and #{end_integer} is #{product}."
end 