def factors(number)
  divisor = number
  factors = []
  
  while divisor > 0
    divided_number = number / divisor
    factors.push(divided_number) if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(10)
p factors(0)
p factors(-10)