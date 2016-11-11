get '/words/new' do
  erb :'word/new'
end

post '/words' do
  @word = Word.new(params[:blocked_word])
  if @word.save
    redirect '/'
  else
    @error = "something went wrong"
    erb :'word/new'
  end
end
