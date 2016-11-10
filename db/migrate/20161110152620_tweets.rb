class Tweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :twitter_id
      t.string :text
      t.datetime :time_sent
      t.integer :muted_account_id

      t.timestamps(null: false)
    end
  end
end
