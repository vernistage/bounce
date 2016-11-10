class MutedAccount < ActiveRecord::Base
  belongs_to :user_id
  has_one :tweet

end
