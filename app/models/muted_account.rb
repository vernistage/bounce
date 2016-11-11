class MutedAccount < ActiveRecord::Base
  belongs_to :user
  has_one :tweet

end
