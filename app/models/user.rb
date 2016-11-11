class User < ActiveRecord::Base
  has_many :blocked_words
  has_many :muted_accounts

end
