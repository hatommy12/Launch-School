# What's my bonus?
def calculate_bonus(salary, gets_bonus)
  return (salary / 2) if gets_bonus
  0
end 

=begin
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end 
=end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000