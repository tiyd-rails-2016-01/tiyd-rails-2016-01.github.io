class Person
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def say_name
    puts "My name is #{@name}"
  end

  def receive_call
    @phone.ring
  end
end
