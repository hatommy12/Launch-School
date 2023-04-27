def ascii_value(string)
  return 0 if string.empty?
  string.chars.map(&:ord).inject(:+)
end

puts ascii_value('Four score') == 984,
ascii_value('Launch School') == 1251,
ascii_value('a') == 97,
ascii_value('') == 0