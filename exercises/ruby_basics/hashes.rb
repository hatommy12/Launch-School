# First Car
car = {
  type: "sedan",
  color: 'blue',
  mileage: 80_000
}
p car

old_car = {
  "type"    => 'sedan',
  'color'   => 'blue',
  'mileage' => 80_000
}
p old_car

# Adding the Year
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003
p car

# Broken Odometer
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car

# What Color?
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]

# Labeled Numbers
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} number is #{value}."}

# Divide by Two
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |k,v| v / 2}
p half_numbers

# Low,Medium or High?
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select {|k,v| v < 25}
p low_numbers

# Low or Nothing
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# Multiplte Cars
vehicles = {
  
  car: {
    type: 'sedan', color: 'blue', year: 2003
  },
  
  truck: {
    type: 'pickup', color: 'red', year: 1998
  }
}

puts vehicles

# which collection?
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = car.to_a
p car
  
  