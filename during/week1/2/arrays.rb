array = []

5.times do
  puts "Give me a student name."
  array << gets.chomp
end

array.each do |name|
  unless name == "Joseph"
    puts "#{name} is in this class."
  end
end

puts "The first name you gave me was #{array[0]}."
