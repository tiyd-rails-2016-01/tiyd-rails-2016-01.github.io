module Fish
  PHYLUM = "Chordata"

  class Bass
    def swim
      "Splash splash"
    end
  end
end

class Bass
  def play
    "Strum strum strum"
  end
end

puts Bass.new.play
puts Fish::Bass.new.swim
puts Fish::PHYLUM.reverse
