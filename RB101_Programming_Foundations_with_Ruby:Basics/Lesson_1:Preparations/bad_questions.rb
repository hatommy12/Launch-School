NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test

NUMBERS = [1, 2, 3]
arr = [1, 2, 3]

def test
 puts NUMBERS.inspect
 puts arr.inspect
end

test

# => [1, 2, 3]
# => NameError: undefined local variable or method `arr'
# Constants are global variables; able to be accessed everywhere
