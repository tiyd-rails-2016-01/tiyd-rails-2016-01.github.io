def talk_to_user
  puts "please enter an integer, when you are done entering numbers just hit enter"
  return gets.chomp
end

def is_an_integer?(string, be_nice)
  unless be_nice
    puts "You stink."
  end
  return string.to_i.to_s == string
end

def is_a_float?(string)
  return string.to_f.to_s == string
end

count = 0
sum = 0.0
user_input = talk_to_user
until user_input == ""
  if is_an_integer?(user_input, false) || is_a_float?(user_input)
    sum = sum + user_input.to_f
    count = count + 1
  end
  user_input = talk_to_user
end

average = sum/count
puts "you must be done entering your numbers"
puts "your count is " + count.to_s
puts "your sum is " + sum.to_s
puts "your average is " + average.to_s
