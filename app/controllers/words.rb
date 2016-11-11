get '/words/new' do
  if request.xhr?
    erb :'word/_new_blocked_words', layout: false
  else
    @error = "Something went wrong"
    erb :'word/new'
  end
end

post '/words' do
  @blocked_words = word_parser(params['words'])
  if @blocked_words.length > 0
    redirect "/user/#{current_user_id}"
  else
    @error = "something went wrong"
    erb :'word/new'
  end
end


delete '/words/:id' do
  @word = BlockedWord.find(params[:id])
  @word.destroy
  redirect "/user/:id"
end

