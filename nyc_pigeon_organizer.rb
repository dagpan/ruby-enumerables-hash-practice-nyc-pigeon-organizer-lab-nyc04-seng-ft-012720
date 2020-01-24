













def nyc_pigeon_organizer(data)
  # write your code here!
  array1 = data[:gender][:male]
  array2 = data[:gender][:female]
  array_purple = data[:color][:purple]
  array_grey = data[:color][:grey]
  array_white = data[:color][:white]
  array_brown = data[:color][:brown]
  array_subway = data[:lives]["Subway"]
  array_centralpark = data[:color]["Central Park"]
  array_library = data[:color]["Library"]
  array_cityhall = data[:color]["City Hall"]
  name_array = array1.concat(array2)
  name_hash = Hash[name_array.collect {|name| [name, {:color => [], :lives => [], :gender => []}]}]
  i = 0
  while i < 5 do
      name_hash[name_array[i]][:gender] = ["male"]
      i += 1
  end
  pp name_hash
  i = 5
  while i < 7 do
      name_hash[name_array[i]][:gender] = ["female"]
      i += 1
  end
  pp name_hash
  i = 0
  while i < name_array.length do
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
         name_hash[name_array[i]][:color] << "Subway"
      end
      if array_centralpark.include?(name_array[i])
         name_hash[name_array[i]][:color] << "Central Park"
      end
      if array_library.include?(name_array[i])
         name_hash[name_array[i]][:color] << "Library"
      end
      if array_cityhall.include?(name_array[i])
         name_hash[name_array[i]][:color] << "City Hall"
      end
  i += 1
  end
  pp name_hash
end



