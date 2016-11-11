class User < ActiveRecord::Base
  has_many :blocked_words
  has_many :muted_accounts

  validates :twitter_handle, presence: true
end
