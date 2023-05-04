def merge(arr1, arr2)
  # first solution
  # arr1.union(arr2)
  
  # second solution
  (arr1 + arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]