# Squaring an Argument

def multiply(n1, n2)
  n1 * n2
end

def square(int)
  multiply(int, int)
end

def power_to_the_n(int, power_value)
  result = int
  (power_value - 1).times do
    result = multiply(result, int)
  end
  result
end

puts square(5) == 25
puts square(-8) == 64
puts power_to_the_n(2,6)