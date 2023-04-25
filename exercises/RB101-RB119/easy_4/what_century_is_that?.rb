def century(year)
  century = year / 100
  century += 1 if year % 100 > 0
  
  if (11..19).include?(century % 100)
    century = century.to_s + 'th'
  elsif century % 10 == 1
    century = century.to_s + 'st'
  elsif century % 10 == 2
    century = century.to_s + 'nd'
  elsif century % 10 == 3
    century = century.to_s + 'rd'
  else
    century = century.to_s + 'th'
  end
  
  century
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'