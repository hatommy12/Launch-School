def fibonacci_seq(num)
  start_seq = [1, 1]
  num.times do |idx| 
    start_seq.push(start_seq[idx] + start_seq[idx + 1]) 
  end
  start_seq.sum
end

def find_fibonacci_index_by_length(length)
  sum = 0
  index = 0
  fib = 1
  until index == length
    sum = fibonacci_seq(fib)
    fib += 1
    index = sum.to_s.size
  end
  fib + 3
end
  
puts find_fibonacci_index_by_length(10) == 45,          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(2) == 7,
find_fibonacci_index_by_length(10) == 45,
find_fibonacci_index_by_length(100) == 476,
find_fibonacci_index_by_length(1000) == 4782