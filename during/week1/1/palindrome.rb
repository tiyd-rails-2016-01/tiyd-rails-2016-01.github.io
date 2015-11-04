#Takes user input and determines if it is a palindrome.
counter = 0
while counter < 5
  puts "Enter word to check if it is a palindrome."
  input = gets.chomp
  if input.length < 2 || input.reverse == input
    puts "Your word is palindrome."
  else
    puts "Your word is not a palindrome."
  end
  counter = counter + 1
end
