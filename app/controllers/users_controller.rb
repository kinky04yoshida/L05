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
    cpass = params(pass: [:user][:pass])
    #cpass = BCrypt::Password.create(params[:pass])
    user = User.new(uid: params[:user][:uid], pass: cpass)
    if user.save
      redirect_to '/users/list'
    else
      redirect_to 'users/new'
    end
  end

end