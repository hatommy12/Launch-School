# Always return Negative
def negative(int)
  return int if int.negative?
  -int
end 

def negative(int)
  int < 0 ? int : -int
end 

def negative(int)
  -int.abs
end 

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby