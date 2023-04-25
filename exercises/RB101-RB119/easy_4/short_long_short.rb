def short_long_short(string1, string2)
  arr = [string1, string2]
  min_string = arr.min { |string1, string2| string1.size <=> string2.size }
  max_string = arr.max { |string1, string2| string1.size <=> string2.size }
  min_string + max_string + min_string
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"