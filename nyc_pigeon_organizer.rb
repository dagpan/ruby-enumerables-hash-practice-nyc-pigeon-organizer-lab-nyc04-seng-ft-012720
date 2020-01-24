













def nyc_pigeon_organizer(data)
  # write your code here!
  array1 = data[:gender][:male]
  array2 = data[:gender][:female]
  m = 0
  array1.each do
    if array1[m].include?(array2[m])
       array1[m].pop
    
  array_male = data[:gender][:male]
  array_female = data[:gender][:female]
  array_purple = data[:color][:purple]
  array_grey = data[:color][:grey]
  array_white = data[:color][:white]
  array_brown = data[:color][:brown]
  array_subway = data[:lives]["Subway"]
  array_centralpark = data[:lives]["Central Park"]
  array_library = data[:lives]["Library"]
  array_cityhall = data[:lives]["City Hall"]
  name_array = array1.concat(array2)
  name_hash = Hash[name_array.collect {|name| [name, {:color => [], :lives => [], :gender => []}]}]
  #i = 0
  #while i < 5 do
  #    name_hash[name_array[i]][:gender] = ["male"]
  #    i += 1
  #end
  #pp name_hash
  #i = 5
  #while i < 7 do
  #    name_hash[name_array[i]][:gender] = ["female"]
  #    i += 1
  #end
  pp data[:gender][:male]
  pp name_hash
  pp array_male
  pp array_female
  pp array_purple
  pp array_grey
  pp array_white
  pp array_brown
  pp array_subway
  pp array_centralpark
  pp array_library
  pp array_cityhall
  pp name_array
  i = 0
  while i < name_array.length do
      if array_male.include?(name_array[i]) 
         name_hash[name_array[i]][:gender] << "male"
      end
      if array_female.include?(name_array[i])
         name_hash[name_array[i]][:gender] << "female"
      end
      if array_purple.include?(name_array[i]) 
         name_hash[name_array[i]][:color] << "purple"
      end
      if array_grey.include?(name_array[i])
         name_hash[name_array[i]][:color] << "grey"
      end
      if array_white.include?(name_array[i])
         name_hash[name_array[i]][:color] << "white"
      end
      if array_brown.include?(name_array[i])
         name_hash[name_array[i]][:color] << "brown"
      end
      if array_subway.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Subway"
      end
      if array_centralpark.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Central Park"
      end
      if array_library.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Library"
      end
      if array_cityhall.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "City Hall"
      end
  i += 1
  end
  pp name_hash
end



