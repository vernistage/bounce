class BlockedWord < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet

  validates :word, :user_id, presence: :true
end
