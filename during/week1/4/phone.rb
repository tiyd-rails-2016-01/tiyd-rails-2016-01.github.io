class Phone

  attr_accessor :number_of_rings

  def initialize(r, num)
    @ringtone = r
    @number_of_rings = num
  end

  def ring
    @number_of_rings.times do
      puts @ringtone
    end
  end
end
