class TopController < ApplicationController

  def main
    if session[:login_uid]
      @login_user = session[:login_uid]
      render "main"
    else
      render "login"
    end
  end
    
  def top
    @users = User.all
  end

  def login
    input_pass = params[:pass]
    if User.find_by(uid: params[:uid])
      user = User.find_by(uid: params[:uid])
      db_pass = user.pass
      if BCrypt::Password.new(db_pass) == input_pass
        session[:login_uid] = params[:uid]
        redirect_to root_path
      else
        render 'error'
      end
    else
      render 'error'
    end
  end
    
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end
