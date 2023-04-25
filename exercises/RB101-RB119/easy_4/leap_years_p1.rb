def leap_year?(year)
  result = nil
  if year % 400 == 0
    result = true
  elsif year % 100 == 0
    result = false
  elsif year % 4 == 0
    result = true
  else
    result = false
  end
  result
end

puts leap_year?(2016) == true,
leap_year?(2015) == false,
leap_year?(2100) == false,
leap_year?(2400) == true,
leap_year?(240000) == true,
leap_year?(240001) == false,
leap_year?(2000) == true,
leap_year?(1900) == false,
leap_year?(1752) == true,
leap_year?(1700) == false,
leap_year?(1) == false,
leap_year?(100) == false,
leap_year?(400) == true
