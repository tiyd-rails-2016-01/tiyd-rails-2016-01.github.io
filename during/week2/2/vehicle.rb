class Vehicle
  def initialize(avg)
    @avg = avg
  end

  def travel_time(distance)
    @travel_time = distance / @avg
  end
end

module Flying
  def can_fly?
    true
  end
end

module Carry
  def cargo?
    true
  end
end

class Truck < Vehicle
  include Carry
end

class Plane < Vehicle
  include Carry
  include Flying
end

class Helicopter < Vehicle
  include Flying
end

plane = Plane.new(100)
puts plane.can_fly?
