keep_going = true
count = 0
sum = 0.0
puts "Please enter a number."
puts "When you are tired of giving numbers you can press enter."
while keep_going
  user_input = gets.chomp
  if user_input == ""
    keep_going = false
  elsif !(user_input.to_i.to_s == user_input || user_input.to_f.to_s == user_input)
    puts "Google 'What is a number?' and then try again."
  else
    count= count + 1
    sum = sum + user_input.to_f
    puts "Thank you sir. May I have another?"
  end
end
average = sum / count
puts "The total of your input is: " + sum.to_s
puts "The average of your input is: " + average.to_s
puts "Thanks for playing!"
