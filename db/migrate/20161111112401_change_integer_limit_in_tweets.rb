class ChangeIntegerLimitInTweets < ActiveRecord::Migration
   def change
    change_column :tweets, :twitter_id, :integer, limit: 8
  end
end
