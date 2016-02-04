require './phone'
require './person'

iphone = Phone.new("Apple", "iPhone 7", "Thriller")
mason = Person.new("Mason", iphone)
mason.say_name
mason.receive_call
