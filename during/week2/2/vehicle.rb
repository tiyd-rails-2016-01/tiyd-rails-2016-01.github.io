module ModuleNotes
  AWESOMENESS_LEVEL = 10

  class Vehicle
    def initialize(fuel_capacity, miles_per_gallon)
      @fuel_capacity = fuel_capacity
      @mpg = miles_per_gallon
    end

    private def max_distance
      @fuel_capacity * @mpg
    end
  end

  module Flying
    def fly
      puts "I can fly, I can fly. With #{@fuel_capacity} gallons."
    end
  end

  module Cargo
    def carry_cargo
      puts "I can carry cargo."
    end
  end

  class Helicopter < Vehicle
    include Flying
    include Cargo
  end

  class Truck < Vehicle
    include Cargo
  end

  class JetPack < Vehicle
    include Flying
  end
end
