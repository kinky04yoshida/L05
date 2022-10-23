class User < ApplicationRecord
    validates :uid, presence: true, uniqueness: true
    validates :pass, presence: true
    
    has_many :tweets, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :like_tweets, through: :likes, source: :tweet
end
