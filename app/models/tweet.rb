class Tweet < ApplicationRecord
    validates :message, presence: true
    has_many :likes
    has_many :like_users, through: :like, source: :user
end
