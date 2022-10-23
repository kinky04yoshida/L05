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
    #cpass = BCrypt::Password.create(params[:user][:pass])
    #@user = User.new(uid: params[:user][:uid], pass: cpass)

    @user = User.new(
      uid: params[:user][:uid],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation])
    if @user.save
      render '/users/list'
    else
      redirect_to '/users/new'
    end
  end

end