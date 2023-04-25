INT_TO_STR = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

def signed_integer_to_string(int)
  int_result = int.abs.digits.reverse.map { |int| INT_TO_STR[int] }.join
  if int.negative?
    '-' + int_result
  elsif int.zero?
    int_result
  else
    '+' + int_result
  end
end

puts signed_integer_to_string(4321) == '+4321',
signed_integer_to_string(-123) == '-123',
signed_integer_to_string(0) == '0'