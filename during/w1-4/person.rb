class Person
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def say_name
    puts "My name is #{@name}!!"
  end

  def get_call
    @phone.ring
  end
end
