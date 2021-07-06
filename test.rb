pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}






def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each {|key,value|
    value.each{|key2, value2|
      value2.map{|name|
        new_hash[name] = {}
      }
    }
  }
  data[:color].each {|key3, value3|
    counter = 0 
    while value3[counter] do 
      if new_hash[value3[counter]][:color]
        new_hash[value3[counter]][:color].push(key3)
      else
        new_hash[value3[counter]] = {:color => [key3]}
      end 
      counter += 1 
    end 
        }
        
    data[:gender].each {|key4, value4|
    counter = 0 
    while value4[counter] do 
      if new_hash[value4[counter]][:gender]
        new_hash[value4[counter]][:gender].push(key4)
      else
        new_hash[value4[counter]][:gender] = [key4]
      end 
      counter += 1 
    end 
        }
    data[:lives].each {|key5, value5|
    counter = 0 
    while value5[counter] do 
      if new_hash[value5[counter]][:lives]
        new_hash[value5[counter]][:lives].push(key5)
      else
        new_hash[value5[counter]][:lives] = [key5]
      end 
      counter += 1 
    end 
        }
        
    return new_hash
end

puts nyc_pigeon_organizer(pigeon_data)















