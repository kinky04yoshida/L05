class User < ApplicationRecord
    validates :uid, presence: true, uniqueness: true
    validates :pass, presence: true
    
    has_many :tweets
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet
end
