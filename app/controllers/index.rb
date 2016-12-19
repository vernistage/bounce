$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "[YOUR CONSUMER KEY HERE]"
  config.consumer_secret     = "[YOUR CONSUMER SECRET HERE]"
  config.access_token        = "[YOUR ACCESS TOKEN HERE]"
  config.access_token_secret = "[YOUR SECRET ACCESS TOKEN HERE]"
end

get "/" do
  @user = User.find_or_create_by!(twitter_handle: $client.user.screen_name)
  session[:user] = @user.twitter_handle
  erb :index
end

get '/statuses/mentions_timeline' do
  # Returns the 20 most recent mentions.
  @blocked_words = BlockedWord.all
  $client.mentions.each do |tweet|
    @blocked_words.each do |word_object|
      if tweet.text.include?(word_object.word.downcase)
        word_object.tweet_id =
        account_to_mute = MutedAccount.find_or_create_by!(twitter_handle: tweet.user.screen_name, twitter_account_id: tweet.user.id, user_id: current_user_id)
        offending_tweet = Tweet.find_or_create_by!(twitter_id: tweet.id, text: tweet.text, time_sent: tweet.created_at, muted_account_id: account_to_mute.id)
        word_object.tweet_id = offending_tweet.id
        word_object.save
        # account_to_mute.mute
      end
    end
  end

  redirect "/user/#{current_user_id}"

end
