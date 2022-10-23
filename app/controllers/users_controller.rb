class UsersController < ApplicationController
  def index
    @users = User.all
    @tweets = Tweet.all
  end
  
  def list
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    cpass = BCrypt::Password.create(params[:user][:pass])
    user = User.new(uid: params[:user][:uid], pass: cpass)
    if user.save
      redirect_to '/users/list'
    else
      redirect_to 'users/new'
    end
  end

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