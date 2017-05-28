class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tweets

validates :user, presence: true
validates :tweet, presence: true
validates :text, length: { minimum: 5 }
end
