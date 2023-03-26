def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# under Calling Methods; Ruby will fill non default value first from left to right; 
# in this case, however, a becomes 4 and d becomes 6, then the default gets changed to whatever it left. 5
# => [4,5,3,6]

my_method(1,4)
my_method(1,4,2,3)

def my_method(a, b = 2, c = 3, d, e)
  p [a, b, c, d, e]
end

my_method(1, 3, 4)       # => [1, 2, 3, 3, 4]? true
my_method(1, 5, 6, 7)    # => [1, 5, 3, 6, 7]
my_method(1, 5, 6, 7, 8) # => [1, 5, 6, 7, 8]

# a little confusing, but the last argument provided is always the last undefaulted number then you work backwards
