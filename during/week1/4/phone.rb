class Phone
  def initialize(make, model, ringtone)
    puts "I am getting set up"
    @make = make
    @model = model
    @ringtone = ringtone
  end

  def ring
    puts @ringtone
  end

  def get_model
    return "#{@make} #{@model}"
  end
end
