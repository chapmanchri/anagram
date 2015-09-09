def reverse_letters(passed_array)
  #init final array
  final = []

  #set start to passed_array
  start = passed_array
  original_word = start.join
  #initialize final with the first word in start
  final.push(start.join)
  #enumerate through start
  # start.each do |start_x|
  
    while (final.length == 1) or (final.last != original_word) do
      new_word = []
      new_word.push(start[0])
      new_word.push(start.last)
      new_word.push(start[1])
      final.push(new_word.join)
      # letter 3
      start = new_word
      new_word = []
      new_word.push(start[1])
      new_word.push(start[0])
      new_word.push(start.last)
      final.push(new_word.join)
      start = new_word
    end
    final.pop
    puts "#{final}"
    return final

  # end
end
#
# a = ["c","a","t"]
# reverse_letters(a)
