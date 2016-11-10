$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "69iX0oPC3t8LKfXhyinjvVXHR"
  config.consumer_secret     = "xdLQourOKXAILYDuqCsqUFhMtePnbjOSI2X3RSw5w1vFUuAqYs"
  config.access_token        = "2282589380-jkqokozJh70LVPqJUvg4doT8OZ0oGFGukc9phpr"
  config.access_token_secret = "QMYzLBm7nlSpsNuUHrPkGsPg3GeULQmfCS4jYKXSHhGw0"
end

get "/" do
  # this should return us our last 20 tweets
  @tweets = $client.user_timeline.map { |tweet| tweet.text }
  erb :index
end

post "/tweet" do
  # this should send out a tweet
  $client.update(params[:tweet])
  redirect "/"
end

get '/statuses/mentions_timeline' do
  # Returns the 20 most recent mentions.
  @blocked_words = Word.all
  $client.mentions.each do |tweet|
    @blocked_words.each do |word|
      if tweet.text.include?(word)
        @user = tweet.user
        @user.mute
      end
    end
  end

end


