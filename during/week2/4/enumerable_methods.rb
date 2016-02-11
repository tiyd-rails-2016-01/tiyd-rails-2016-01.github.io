class Array
  def map
    new_array = []
    test = true
    self.each do |i|
      new_array << yield(i)
    end
    new_array
  end

  def select
    new_array = []
    self.each do |i|
      new_array << i if yield(i)
    end
    new_array
  end

  def any?
    self.each do |i|
      return true if yield(i)
    end
    false
  end
end



# 5.times {|i| puts i}
#
# puts [1, 2, 3].reduce(0.0) {|sum, i| sum - i}
#
# def do_the_block
#   puts "Before the block"
#   yield("MOO", 4)
#   puts "After the block"
#   puts "(Wait, one more)"
#   yield("Baaa", 10)
#   puts "(Really done now)"
# end
#
# do_the_block {|w, times| puts "THE BLOCK SAYS #{w * times}"}

class Array
  def our_map
    results = []
    self.each do |thing|
      results << yield(thing)
    end
    results
  end

  def our_select
    results = []
    self.each do |thing|
      results << thing if yield(thing)
    end
    results
  end
end

a = [1, 2, 3, 4]

factor = 100

p a.our_map

p a.our_select {|n| n.even?}

b = ["Da-Me", "Blake", "MasonMatthews"]

p b.our_select {|n| n.length > 5}
