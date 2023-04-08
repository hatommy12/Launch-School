def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

puts color_valid("blue")
puts color_valid('green')
puts color_valid('dasda')

# ternary isn't needed; simply couldve just provided the statement 