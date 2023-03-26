# Reverse the Digits in a Number
def reversed_number(pos_int)
  pos_int = pos_int.to_s.chars
  rev_int_array = pos_int.reverse.join.to_i
end 


puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
