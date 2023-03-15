# What's My Value? (#1)
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# value should be 7; my_value with called but not saved

# What's My Value? (#2)
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

#should still be 7; my_value wasn't saved; also different scopes 

# What's My Value? (#3)
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

## should output 12 because a was pulled from a global scope and reassigned inside
# I was wrong; answer should be 7 because local variables are self contained; cannot change outside of scope

# What's My Value? (#4)
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# "Xy-zy"
# this is quite confusing on why a is changed when earlier with integers it was not
# However, after testing b = "-", where a is not affected
# It seems like a is changed due to the fact that b[2] is a mutating method


# What's My Value? (#5)
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# should stay the same as "Xyzzy" because no mutable method was used


# What's My Value? (#6)
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# this should give us an error since a was never assigned globally or locally in the method


# What's My Value? (#7)
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# a = 3; because blocks don't create their own scope


# What's My Value? (#8)
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# i think because blocks don't create their own scope, a can be accessed outside of block
# initialized variables inside blocks are removed after block is used, therefore a 
# technically doesn't exist when puts a is being called. 

# What's My Value? (#9)
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# prints 7 because it's using its own local variable a instead of reassigning external variable a


# What's My Value? (#10)
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# this would be an error because a in the each block was never assigned in the method block, nor provided as an argument