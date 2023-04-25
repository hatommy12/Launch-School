def string_to_integer(string)
  int_arr = string.chars.map do |char|
    case char
    when '-' then 'd'
    when '+' then 'd'
    when '0' then 0
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9
    end
  end
  
  int_arr.delete('d')
  sum = 0
  int_arr.map.with_index do |int, idx|
    sum += int * (10**(int_arr.size - (idx + 1)))
  end
  
  if ['-'].include?(string[0])
    -sum
  else
    sum
  end
end

def string_to_signed_integer(string)
  case string[0]
  when '-' || '+' then  -string_to_integer(string[1..-1])
  else                  string_to_integer(string)
  end
end


puts string_to_integer('4321') == 4321,
string_to_signed_integer('-570') == -570,
string_to_integer('+7347') == 7347