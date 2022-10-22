class Tweet < ApplicationRecord
    validates :message, presence: true
    validates :user_id, presence: true
    has_many :likes
    has_many :like_users, through: :like, source: :user
end
