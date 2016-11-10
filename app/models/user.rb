class User < ActiveRecord::Base
  has_many :user_words
  has_many :blocked_words, through: :users_words
  has_many :muted_accounts

end
