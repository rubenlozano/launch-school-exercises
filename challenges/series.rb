# series.rb
#
# Write a program that will take a string of digits and give you all the
# possible consecutive number series of length n in that string.
#
# For example, the string "01234" has the following 3-digit series:
#
# - 012
# - 123
# - 234
#
# And the following 4-digit series:
#
# - 0123
# - 1234
#
# And if you ask for a 6-digit series from a 5-digit string, you deserve
# whatever you get.

class Series
  def initialize(string_of_digits)
    @digits = string_of_digits.chars.map(&:to_i)
  end

  def slices(length)
    if length > @digits.size
      raise(ArgumentError, 'length passed greater than string size')
    end

    @digits.each_cons(length).to_a
  end

  # Alternatives

  # def slices(length)
  #   if length > @digits.size
  #     raise(ArgumentError, 'length passed greater than string size')
  #   end
  #
  #   series = []
  #
  #   @digits.each_index do |index|
  #     serie = @digits.slice(index, length)
  #     series << serie if serie.size == length
  #   end
  #
  #   series
  # end
end
