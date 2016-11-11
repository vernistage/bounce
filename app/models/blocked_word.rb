class BlockedWord < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet, dependent: :destroy

  validates :word, :user_id, presence: :true
end
