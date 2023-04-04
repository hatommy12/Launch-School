# Exclusive Or
def xor?(operand1, operand2)
  if operand1
    if not operand2 
      return true
    end
  end
  if operand2
    if not operand1
      return true
    end
  end
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false