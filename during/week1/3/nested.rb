hash = {"Mason" => {"home" => "111",
                    "mobile" => "222",
                    "fax" => "333"},
        "Da-Me" => {"mobile" => "444"},
        "Blake" => {"home" => "555",
                    "mobile" => "666"}}

puts hash["Blake"]["home"]

blakes_numbers = hash["Blake"]
puts blakes_numbers["home"]



hash = {"Mason" => ["111", "222", "333"],
        "Da-Me" => ["444"],
        "Blake" => ["555", "666"]}

puts hash["Blake"][0]

blakes_numbers = hash["Blake"]
puts blakes_numbers[0]
