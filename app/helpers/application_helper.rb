module ApplicationHelper
    def current_user
        if session[:login_uid]
           User.find_by(uid: session[:login_uid])
        end
    end
end
