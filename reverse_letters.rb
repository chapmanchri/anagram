def reverse_letters(passed_word)
  #convert string into array
  word = passed_word.split(//)
  anagram_array = word.permutation.to_a
  anagram_string_array = []
  #iterate through each element in anagram array
  #join characters in each element
  #puts joined characters to new element in anagram_straing_array
  anagram_array.each do |a_word|
    anagram_string_array.push(a_word.join)
  end
  return anagram_string_array
end
  