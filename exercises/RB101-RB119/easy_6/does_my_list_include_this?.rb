def include?(array, search_value)
  array.each do |element|
    return true if element == search_value
  end
  false
end

puts include?([1,2,3,4,5], 3) == true,
include?([1,2,3,4,5], 6) == false,
include?([], 3) == false,
include?([nil], nil) == true,
include?([], nil) == false