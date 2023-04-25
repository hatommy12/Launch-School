def multisum(integer)
  multi_integers = (1..integer).select { |int| int % 3 == 0 || int % 5 == 0}
  multi_integers.sum
end

puts multisum(3),
multisum(3) == 3,
multisum(5) == 8,
multisum(10) == 33,
multisum(1000) == 234168