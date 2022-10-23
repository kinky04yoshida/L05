class Tweet < ApplicationRecord
    has_many :likes
    has_many :like_users, through: :like, source: :user

    def like(user)
        likes.create(user_id: user.id)
    end

    def unlike(user)
        likes.find_by(user_id: user.id).destroy
    end

    def liked?(user)
        like_users.include?(user)
    end

end
