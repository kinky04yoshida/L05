class UsersController < ApplicationController
  def index
    @users = User.all
    @tweets = Tweet.all
  end
  
  def list
    @users = User.all
  end
  
   
  
end