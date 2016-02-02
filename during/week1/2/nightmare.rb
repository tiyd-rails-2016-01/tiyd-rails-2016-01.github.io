print "Please enter a word or a number: "
user_input = gets.chomp

if !(user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input)

  tot_length = 0
  concat = ""

  loop do
    if user_input.empty?
      puts concat
      puts "Average length of words: " + (concat.length.to_f/count).to_s
      puts "Total times the letter 'e' was entered: " + concat.scan(/e/).count.to_s
      break
    elsif user_input.to_f != 0.0
      puts "Oops! It looks like you didn't enter a word. Please start over."
      break
    else
      concat = concat + user_input
      count = count + 1
      print "Please enter another word (or press Enter to exit): "
      user_input = gets.chomp
    end
  end

else

  sum = 0.0
  count = 0
  variance = 0.0
  numbers = []

  loop do
    if user_input.empty?
      numbers.each {|i| sum += i}
      count = numbers.count
      mean = sum.to_f/count

      numbers.each {|a| (variance += ((a - mean)**2))}
      variance = variance/count
      standard_deviation = Math.sqrt(variance)

      numbers.sort!
      if numbers.count % 2 == 0
        position = numbers.count/2
        median = (numbers[position] + numbers[position - 1])/2
      else
        position = numbers.count/2
        median = numbers[position]
      end

      puts "The total of all numbers is: " + sum.to_s
      puts "The average of all numbers is : " + mean.to_s
      puts "The standard deviation of the numbers is: " + standard_deviation.to_s
      puts "The median of the numbers is: " + median.to_s
      break
    elsif !(user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input)
      puts "Oops! It looks like you didn't enter a number. Please start over."
      break
    else
      #add each number entered into the array
      numbers << user_input.to_f
      print "Please enter another number (or press Enter to exit:) "
      user_input = gets.chomp
    end
  end
end
