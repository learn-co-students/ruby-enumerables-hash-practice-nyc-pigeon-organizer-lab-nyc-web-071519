def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  attributes = pigeon_data.keys
  attributes.each do |a|
    options = pigeon_data[a].keys
    options.each do |b|
      names = pigeon_data[a][b]
      names.each do |c|
        if pigeon_list[c].nil?
          pigeon_list[c] = {
            a => ["#{b}"],
          }
        elsif pigeon_list[c][a].nil?
          pigeon_list[c][a] = ["#{b}"]
        else
          pigeon_list[c][a].push("#{b}")
        end
      end     
    end
  end
  pigeon_list
end