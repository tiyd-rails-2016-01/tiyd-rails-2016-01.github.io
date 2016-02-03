names = {}

loop do
  puts "Give me a name."
  name = gets.chomp
  break if name == ""
  puts "Give me #{name}'s phone number."
  phone = gets.chomp

  names[name] = phone
end

loop do
  puts "Give me a name, and I will give you the phone number."
  name = gets.chomp
  break if name == ""

  phone = names[name]
  if phone == nil
    puts "No name found."
  else
    puts "The number for #{name} is #{phone}"
  end
end
