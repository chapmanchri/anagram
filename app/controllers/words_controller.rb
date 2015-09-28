get '/words' do
  @words = Word.all
  erb :"/words/index"
end

get '/words/new' do
  @word = Word.new
  @word.text = "enter word here"
  puts "*********************************"
  puts @word.class
  puts "*********************************"  
  erb :"/words/new"
end

get '/words/:id/edit' do
  @word = Word.find(params[:id])
  erb :"/words/edit"
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
  word = Word.create(text: params[:text])
  redirect "/words/#{word.id}"
end

put '/words/:id' do
  word = Word.find(params[:id])
  
  puts "********ddd********tttt*****************"
  puts word.text
  puts "********ddd*******tttt******************"  
  
  word.text = params[:text]
  word.save
  redirect "/words/#{word.id}"
end

delete '/words/:id' do
  puts "********ddd********tttt*****************"
  puts "in delete"
  puts "********ddd*******tttt******************" 
    Word.find(params[:id]).destroy
    redirect "/words"
end

