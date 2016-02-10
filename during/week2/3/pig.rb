class String
  def to_pig_latin
    words = self.split

    # pig_words = []
    # words.each do |w|
    #   pig_words << w[1..-1] + w[0] + "ay"
    # end
    pig_words = words.map {|w| w[1..-1] + w[0] + "ay"}

    pig_words.join(" ")
  end
end
