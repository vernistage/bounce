class Tweet < ActiveRecord::Base
  belongs_to :muted_account
  has_one :blocked_word

end
