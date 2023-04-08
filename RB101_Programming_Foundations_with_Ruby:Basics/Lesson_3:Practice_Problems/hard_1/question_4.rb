def is_an_ip_number?(numeric_string)
  (0..255).include?(numeric_string.to_i)
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.length != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

puts is_an_ip_number?("255")
puts dot_separated_ip_address?("10.4.5.11")
puts dot_separated_ip_address?("1.1.2")