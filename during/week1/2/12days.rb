def verse(number)
  lyrics = ["a Partridge in a Pear Tree",
      "Two Turtle Doves",
      "Three French Hens"]

  case number
  when 1
    suffix = "st"
  when 2
    suffix = "nd"
  when 3
    suffix = "rd"
  else
    suffix = "th"
  end

  puts "On the #{number}#{suffix} day of Christmas, my true love sent to me"
  puts lyrics[1..number-1].reverse
  print (number > 1 ? "and " : "")
  puts lyrics[0]
  puts ""
end

def entire_song()
  (1..3).each do |number|
    verse(number)
  end
end

puts "Here comes the song."
entire_song
puts "The song is done now."
