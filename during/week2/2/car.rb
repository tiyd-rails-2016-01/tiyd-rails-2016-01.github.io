class Vehicle
  def initialize(clock, thermometer)
    @clock = clock
    @thermometer = thermometer
  end

  def current_time
    @clock.current_time
  end

  def current_temperature
    @thermometer.current_temperature
  end
end

class Clock
  def current_time
    Time.now
  end
end

class Thermometer
  def current_temperature
    rand(30..100)
  end
end

digital_clock = Clock.new
mercury_thermometer = Thermometer.new
bmw = Vehicle.new(digital_clock, mercury_thermometer)

puts bmw.current_time
puts bmw.current_temperature
