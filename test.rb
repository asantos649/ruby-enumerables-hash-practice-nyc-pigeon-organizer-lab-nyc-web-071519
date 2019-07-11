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

def reorganize (data, symbol)
  data[symbol].each {|key3, value3|
    counter = 0 
    while value3[counter] do 
      if new_hash[value3[counter]][symbol]
        new_hash[value3[counter]][symbol].push(key3)
      else
        new_hash[value3[counter]] = {symbol => [key3]}
      end 
      counter += 1 
    end 
        }
        
    data[].each {|key3, value3|
    counter = 0 
    while value3[counter] do 
      if new_hash[value3[counter]][symbol]
        new_hash[value3[counter]][symbol].push(key3)
      else
        new_hash[value3[counter]] = {symbol => [key3]}
      end 
      counter += 1 
    end 
        }
end 



def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each {|key,value|
    value.each{|key2, value2|
      value2.map{|name|
        new_hash[name] = {}
      }
    }
  }
  reorganize(data,:color) 
  return new_hash
end

puts nyc_pigeon_organizer(pigeon_data)















