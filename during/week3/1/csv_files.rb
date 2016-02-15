# require 'csv'
#
# most_points = 0
# person_with_most_points = nil
#
# CSV.open('./data.csv') do |c|
#   c.each do |line|
#
#     if line[1].to_i > most_points
#       most_points = line[1].to_i
#       person_with_most_points = line[0]
#     end
#   end
# end
#
# puts "The person with the most points is: #{person_with_most_points}"



# class Line
#   attr_reader :name, :points, :email
#   def initialize(array)
#     @name = array[0]
#     @points = array[1].to_i
#     @email = array[2]
#   end
# end
#
# require 'csv'
#
# most_points = 0
# person_with_most_points = nil
#
# CSV.open('./data.csv') do |c|
#   c.each do |line|
#     line = Line.new(line)
#     if line.points > most_points
#       most_points = line.points
#       person_with_most_points = line.name
#     end
#   end
# end
#
# puts "The person with the most points is: #{person_with_most_points}"



require 'csv'

most_points = 0
person_with_most_points = nil

CSV.open('./data.csv', headers: true) do |c|
  c.each do |line|
    if line['points'].to_i > most_points
      most_points = line['points'].to_i
      person_with_most_points = line['name']
    end
  end
end

puts "The person with the most points is: #{person_with_most_points}"
