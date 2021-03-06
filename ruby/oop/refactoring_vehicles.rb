# Consider the following classes:
#
# class Car
#   attr_reader :make, :model
#
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
#
#   def wheels
#     4
#   end
#
#   def to_s
#     "#{make} #{model}"
#   end
# end
#
# class Motorcycle
#   attr_reader :make, :model
#
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
#
#   def wheels
#     2
#   end
#
#   def to_s
#     "#{make} #{model}"
#   end
# end
#
# class Truck
#   attr_reader :make, :model, :payload
#
#   def initialize(make, model, payload)
#     @make = make
#     @model = model
#     @payload = payload
#   end
#
#   def wheels
#     6
#   end
#
#   def to_s
#     "#{make} #{model}"
#   end
# end
#
# Refactor these classes so they all use a common superclass, and inherit
# behavior as needed.

class Vehicle
  attr_reader :make, :model, :wheels

  def initialize(make, model)
    @make = make
    @model = model
    @wheels = 4
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
end

class Motorcycle < Vehicle
  def initialize(make, model)
    super(make, model)
    @wheels = 2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @wheels = 6
    @payload = payload
  end
end
