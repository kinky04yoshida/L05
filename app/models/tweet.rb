class Tweet < ApplicationRecord
    has_many :likes
    has_many :like_users, through: :like, source: :user
end
