def reverse_letters(passed_array)
  start_array = passed_array
  #swap element in array
  #first get length of start_array
  start_array_length = start_array.length
  #now create a processed array
  processed_array = []
  #now put the last element of start_array in the first element of processed_array
  processed_array[0] = start_array[start_array_length - 1]
  #now put the first element of start_array into the last element of processed_array
  processed_array.push(start_array[0]) 
  #now return processed_array
  return processed_array
end