# Stringy Strings
def stringy(string_length)
  string = '1'
  (string_length - 1).times do 
    if string[-1] == '1'
      string += '0'
    else
      string += '1'
    end 
  end 
  string
end

# 2
def stringy(string_length)
  string = ''
  for i in (1..string_length)
    s = i.odd? ? '1' : '0'
    string += s
  end
  string
end 

# Further exploration
def stringy(size, starting_num = 1)
  numbers = []
  ending_num = starting_num == 1 ? 0 : 1
  size.times do |index|
    number = index.even? ? starting_num : ending_num
    numbers << number
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'