class Apple
  def initialize(number)
    @number = number
  end

  def +(other)
    @number + other.number
  end

  def number
    @number
  end
end

two = Apple.new(2)
three = Apple.new(3)

puts two + three
