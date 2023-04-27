def cleanup(string)
  non_alphabetics = string.scan(/[^a-zA-Z\s]+/)
  non_alphabetics.each do |char|
    string.gsub!(char, " ")
  end
  string.gsub(/\s+/, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '