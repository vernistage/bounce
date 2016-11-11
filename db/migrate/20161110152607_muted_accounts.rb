class MutedAccounts < ActiveRecord::Migration
  def change
    create_table :muted_accounts do |t|
      t.string :twitter_handle
      t.integer :twitter_account_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
