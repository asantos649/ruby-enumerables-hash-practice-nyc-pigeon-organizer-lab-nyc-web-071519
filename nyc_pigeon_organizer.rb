def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each {|key,value|
    value.each{|key2, value2|
      value2.map{|name|
        new_hash = {name => {}}
      }
    }
  #data[:color].each {|key3, value3|
  #  counter = 0 
  #  while value3[counter] do 
  #    if new_hash[value3[counter]] == nil 
  #      new_hash = {value3[counter] => value3.to_s 
  #    end 
  #  end 
        }
    return new_hash
end

