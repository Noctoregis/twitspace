class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweets

  validates :user, presence: true
end
