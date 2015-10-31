class OddArray
  def initialize(array)
    @array = array.reject {|i| i % 2 == 0}
  end

  def <<(item)
    @array << item if item % 2 == 1
  end

  def to_a
    @array
  end
end
