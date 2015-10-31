class Album
  def initialize(name, stock, price)
    @name = name
    @stock = stock
    @price = price
  end

  def price
    @price
  end

  def stock
    @stock
  end

  def discount(ratio)
    @price -= ratio * @price
  end

  def sell(amount)
    @stock -= amount
  end

  def buy(amount)
    @stock += amount
  end
end
