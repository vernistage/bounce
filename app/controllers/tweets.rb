get '/tweets/:id' do
  @tweet = Tweet.find(params[:id])
  @author = MutedAccount.find(@tweet.muted_account_id)
  if request.xhr?
    erb :'tweet/_tweet_view', layout: false
  else
    erb :'tweet/show'
  end
end

