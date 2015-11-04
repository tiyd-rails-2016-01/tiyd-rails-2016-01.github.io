class Car
  def initialize(thermometer, clock)
    @thermometer = thermometer
    @clock = clock
  end

  def current_time
    @clock.current_time
  end

  def temperature
    @thermometer.temperature
  end
end
