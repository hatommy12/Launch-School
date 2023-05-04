=begin
def reverse!(arr)
  new_arr = []
  arr.each do |element|
    new_arr.unshift(element)
  end
  arr[0..-1] = new_arr
  arr
end
=end

def reverse!(arr)
  start_index = 0
  end_index = -1
  until start_index >= arr.size / 2 do
    arr[start_index], arr[end_index] = arr[end_index], arr[start_index]
    start_index += 1
    end_index -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts result.object_id == list.object_id

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"]

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] 

list = []
puts reverse!(list) == [] # true
puts list == []