user_input = "anything"
number_of_palindromes = 0
number_of_words = 0
until user_input == ""
  puts "Please give me a word."
  user_input = gets.chomp.downcase
  if user_input == ""
    puts "I am done."
  elsif user_input == user_input.reverse
    puts "It is a palindrome."
    number_of_palindromes += 1
    number_of_words += 1
  else
    puts "It is NOT a palindrome."
    number_of_words += 1
  end
end

puts "You have entered " + number_of_palindromes.to_s + " palindromes."
puts "You have entered " + number_of_words.to_s + " words total."


# keep_going = true
# while keep_going
#   puts "Please give me a word."
#   user_input = gets.chomp.downcase
#   if user_input == ""
#     keep_going = false
#     puts "I am done."
#   elsif user_input == user_input.reverse
#     puts "It is a palindrome."
#   else
#     puts "It is NOT a palindrome."
#   end
# end
