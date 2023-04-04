# Palindromic Strings (Part 1)
def palindrome_string?(string)
  string == string.reverse
end

def palindrome_array?(array)
  array == array.reverse
end

puts palindrome_array?([1, 2, 3, 2, 1])
puts palindrome_array?([2, 6, 3])

def palindrome?(string_or_array)
  result = string_or_array.to_s.gsub(/[,\s\[\]]/, '')
  result == result.reverse
end
  
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1, 2, 3, 2, 1])
# s.to_s.delete('[').delete(',').delete(']').delete(' ')