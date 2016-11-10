class BlockedWords < ActiveRecord::Migration
  def change
     create_table :blocked_words do |t|
      t.string :word
      t.integer :tweet_id

      t.timestamps(null: false)
    end
  end
end
