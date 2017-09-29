=begin

Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes, and seconds. You should use a degree symbol (˚) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.

Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=end

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)

  "#{degrees}°#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
end

puts dms(30)        # => %(30°00'00")
puts dms(76.73)     # => %(76°43'48")
puts dms(254.6)     # => %(254°36'00")
puts dms(93.034773) # => %(93°02'05")
puts dms(0)         # => %(0°00'00")
puts dms(360)       # => %(360°00'00") || %(0°00'00")