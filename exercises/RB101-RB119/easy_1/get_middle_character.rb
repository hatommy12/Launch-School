# Get Middle Character
def center_of(string)
  middle_letter_index = string.length / 2
  if string.length.odd?
    return string[(middle_letter_index)]
  else
    string[(middle_letter_index - 1)..middle_letter_index]
  end
end 
  
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'