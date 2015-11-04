class Array
  def map
    new_array = []
    test = true
    self.each do |i|
      new_array << yield(i)
    end
    new_array
  end

  def select
    new_array = []
    self.each do |i|
      new_array << i if yield(i)
    end
    new_array
  end

  def any?
    self.each do |i|
      return true if yield(i)
    end
    false
  end
end
