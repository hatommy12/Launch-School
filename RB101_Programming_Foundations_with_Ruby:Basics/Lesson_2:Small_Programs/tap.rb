array = [1, 2, 3]

mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }              # => [2, 3, 4]

mapped_and_tapped = mapped_array.tap { |value| p 'hello'}
mapped_and_tapped

(1..10).to_a.tap { |x| p x}