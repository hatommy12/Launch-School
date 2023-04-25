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

def integer_to_string(int)
  int.digits.reverse.map { |int| INT_TO_STR[int] }.join
end

puts integer_to_string(4321) == '4321',
integer_to_string(0) == '0',
integer_to_string(5000) == '5000'