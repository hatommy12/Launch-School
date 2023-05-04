def halvsies(arr)
=begin
  if arr.size.odd?
    first_half = arr[0..(arr.size/2)]
    second_half = arr[(arr.size/2+1)..-1]
  else
    first_half = arr[0..(arr.size/2-1)]
    second_half = arr[(arr.size/2)..-1]
  end
  p first_half, second_half
=end
  middle = (arr.size / 2.0).ceil
  first_half = arr[0...middle]
  second_half = arr[middle..-1]
  p first_half, second_half
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]],
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]],
halvsies([5]) == [[5], []],
halvsies([]) == [[], []]