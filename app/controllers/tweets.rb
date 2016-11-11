get '/tweets/:id' do
  @tweet = Tweet.find(params[:id])
  @author = MutedAccount.find(@tweet.muted_account_id)
  erb :'tweet/show'
end

