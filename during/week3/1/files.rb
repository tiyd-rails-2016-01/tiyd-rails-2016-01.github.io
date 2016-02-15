# names = []
#
# File.open('./data.txt') do |f|
#   f.each do |l|
#     names << l.chomp
#   end
# end
#
# puts "All the names are:"
# p names

new_names = []

5.times do
  puts "Give me a new student's name:"
  new_names << gets.chomp
end

puts "All the new names are:"
p new_names

File.open('./data.txt', 'a') do |f|
  new_names.each do |n|
    f << n + "\n"
  end
end
