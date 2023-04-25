def running_total(int_array)
  sum = 0
  int_array.map { |int| sum += int }
end

puts running_total([2, 5, 13]) == [2, 7, 20],
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67],
running_total([3]) == [3],
running_total([]) == []