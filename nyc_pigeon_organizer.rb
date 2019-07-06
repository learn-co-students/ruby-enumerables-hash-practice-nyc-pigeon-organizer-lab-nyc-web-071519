def nyc_pigeon_organizer(data)
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
end

pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}

 pigeon_list = {}
  data.each do |key, value| 
    value.each do |describe, array| 
      array.each do |name| 
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(key)
            pigeon_list[name][key] << describe.to_s
          else
            pigeon_list[name][key] = [describe.to_s]
          end
       
        else
          pigeon_list[name] = {key => [describe.to_s]} 
        end
      end
  pigeon_list
end