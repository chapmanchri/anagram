get '/words' do
  @words = Word.all
  erb :"/words/index"
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