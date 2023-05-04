def reverse(arr)
  new_arr = []
  arr.map { |element| new_arr.unshift(element)}
  new_arr
end


puts reverse([1,2,3,4]) == [4,3,2,1],          # => true
reverse(%w(a b e d c)) == %w(c d e b a),  # => true
reverse(['abc']) == ['abc'],              # => true
reverse([]) == [],                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id,  # => true
list == [1, 3, 2],                     # => true
new_list == [2, 3, 1]                 # => true