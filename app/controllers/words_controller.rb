get '/words' do
  @words = Word.all
  erb :"/words/index"
end

get '/words/new' do
  erb :"/words/new"
end

get '/words/:id' do
  id = params[:id]
  puts "***************************"
  puts id
  @word = Word.find(id)
  puts @word.text
  puts "***************************"
  erb :"words/show"
end

post '/words' do
  # "hello world post"
  # word = params[:new_word]
  # @word = Word.new(text: word)
  # @word.save
  # redirect "/words/#{@word.id}"
  word = Word.create(text: params[:text])
  redirect "/words/#{word.id}"
  
end