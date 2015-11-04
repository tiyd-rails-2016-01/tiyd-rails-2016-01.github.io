require './phone'
require './person'

iphone = Phone.new("Codec", 3)

me = Person.new("Mason", iphone)

me.get_call
