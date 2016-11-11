class ChangeIntegerLimitInMutedAccounts < ActiveRecord::Migration
   def change
    change_column :muted_accounts, :twitter_account_id, :integer, limit: 8
  end
end
