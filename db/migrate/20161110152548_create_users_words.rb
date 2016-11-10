class CreateUsersWords < ActiveRecord::Migration
  def change
    create_table :users_words do |t|
      t.integer :user_id
      t.integer :blocked_word_id

      t.timestamps(null: false)
    end
  end
end
