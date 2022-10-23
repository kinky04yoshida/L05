class ApplicationController < ActionController::Base
private
    def current_user
        if session[:login_uid]
            User.find_by(uid: session[:login_uid])
        end
    end
    helper_method :current_user
    
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