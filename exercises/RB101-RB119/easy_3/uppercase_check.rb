# Uppercase Check
def uppercase?(string)
  string = string.delete('^a-zA-Z')
  string.match?(string.upcase)
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true