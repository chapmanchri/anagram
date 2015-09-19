get '/' do
  erb :index
end

get '/anagrams/:word' do
  @word = params[:word]
  @anagrams = Word.find_anagrams(@word)
  erb :show
end

post '/' do
  @word = params[:word]
  if three_letters?(@word)
    redirect "/anagrams/#{@word}"
  else
    erb :index
  end
end

def three_letters?(input)
  puts "#{input.length} ***********************************"
  if input.length <= 3 and input.length >= 1
    puts "************************* input length ok"
    return true
  else
    puts "************************* input length bad"
    return false
  end
end
