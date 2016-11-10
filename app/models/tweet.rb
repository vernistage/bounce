class Tweet < ActiveRecord::Base
  belongs_to :muted_account
  has_many :blocked_words

end
