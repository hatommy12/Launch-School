# Palindromic Numbers
def palindromic_number?(num)
  num = num.to_s.delete('^a-z0-9')
  num.delete_prefix!('0')
  num == num.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(000000123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(0000005) == true

# This will not work because converting an integer with leading 0 to string
# converts it into another number 
# 012.to_s => "10"
