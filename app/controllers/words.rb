get '/words/new' do
  erb :'word/new'
end

post '/words' do
  @blocked_words = word_parser(params['words'])
  if @blocked_words.length > 0
    redirect '/'
  else
    @error = "something went wrong"
    erb :'word/new'
  end
end
