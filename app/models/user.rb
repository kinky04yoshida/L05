class User < ApplicationRecord
    has_many :likes
    has_many :tweets
    has_many :likes, through: :likes, source: :tweet
end
