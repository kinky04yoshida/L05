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
    cpass = BCrypt::Password.create(params[:pass])
    user = User.new(uid: params[:user][:uid], pass: cpass)
    user.save
    redirect_to '/'
  end

end