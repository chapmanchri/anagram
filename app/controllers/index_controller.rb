get '/' do
  erb :index
end

get '/anagrams/:word' do
  @word = params[:word].downcase
  word_array = @word.chars.sort
  alphabetized_string = word_array.join
  # @anagrams = Word.find_anagrams(@word)
  @anagrams = Word.where("letters=?", alphabetized_string)
  erb :show
end

post '/' do
  word = params[:word]
  begin
    valid_input?(word)
    redirect "/anagrams/#{word}"
  rescue Exception => error
    @error = error.message
    erb :index
  end
end

def distinct_letters?(input)
  letter_array = input.chars
  unique_letters = letter_array.uniq
  if unique_letters.length < letter_array.length
    false
  else
    true
  end
end

def valid_input?(input)
  if input.length > 3 or !distinct_letters?(input) or input.length == 0
    raise Exception.new("Your word must be 1-3 characters in length AND all letters must be unique.")
  end
end