contact_hash = Hash.new

# Phase 1
puts "Give me a name!"
input = gets.chomp

until input == ""

  puts "Give me #{input}'s phone number!"
  number = gets.chomp

  contact_hash[input] = number

  puts ""
  puts "Give me another name!"
  input = gets.chomp
end

# Phase 2
puts "Whose number would you like to get?"
input = gets.chomp

until input == ""
  answer = contact_hash[input] || "(None Found)"

  puts "#{input}'s number is: " + answer

  puts ""
  puts "Who else should I look up?"
  input = gets.chomp
end
