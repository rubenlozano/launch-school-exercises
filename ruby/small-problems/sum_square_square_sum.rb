# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

def square(number)
  number * number
end

def sum_square_difference(number)
  square_sum = square((1..number).reduce(:+))
  sum_squares = (1..number).reduce { |sum, n| sum + square(n) }

  square_sum - sum_squares
end

puts sum_square_difference(3)   # => 22
# => (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

puts sum_square_difference(10)  # => 2640
puts sum_square_difference(1)   # => 0
puts sum_square_difference(100) # => 25164150