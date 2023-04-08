a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# interesting; it seems immutable objects always have the same object ID;
# as if RUBY has them saved as constants
