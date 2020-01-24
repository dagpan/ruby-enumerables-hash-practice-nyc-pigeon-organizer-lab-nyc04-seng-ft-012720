













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
  name_hash = Hash[name_array.collect {|name| [name, {}]}]
  pp array1
  pp array2
  pp name_array
  pp name_hash
  i = 0
  while i < array1.length do
      name_hash[array1[i]][:gender] << "male"
      i += 1
  end
  pp name_hash
  i = 0
  while i < array2.legth do
      name_hash[array2[i]][:gender] << "female"
      i += 1
  end
  pp name_hash
 
 
  
  
  #array_purple.each_with_index do |name, index|
 #     name_hash[name_array[i]][:color] 
  
  
  
#     if array_purple.include?(name_array[i])  
#      if array_purple.include?(name_array[i])
  
#  name_array.each_with_index do |name, index|
#      if array_purple.include?(name_array[i])
#         array_purple
  
  
  
  

  
#  data[:gender][:male].
#   data.reduce({}) do |memo, (key, value)|
#   memo
     
     
     
#       pp memo
#       pp key
#       pp value
end



