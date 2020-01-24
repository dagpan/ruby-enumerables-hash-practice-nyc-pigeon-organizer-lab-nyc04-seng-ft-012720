













def nyc_pigeon_organizer(data)
  # write your code here!
  array1 = data[:gender][:male]
  array2 = data[:gender][:female]
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
  pp data[:gender][:male]
  pp array1
  pp array2
  pp name_array
  array2.each do |name|
     m = 0
     while m < array1.length
         if array1[m].include?(name)
            array1.delete_at(m)
         end
     m += 1
     end
  end
  pp array1
  pp array2
  pp name_array
  pp name_hash
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
      if array1.include?(name_array[i]) 
         name_hash[name_array[i]][:gender] << "male"
      end
      if array2.include?(name_array[i])
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