class Tweet < ActiveRecord::Base
  belongs_to :muted_account, dependent: :destroy
  has_one :blocked_word

end
