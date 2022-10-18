class UsersController < ApplicationController
  def index
    @users = User.all
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    tweet = Tweet.new(message: params[:tweet][:message])
    tweet.save
    redirect_to '/'
  end
   
  
end
