class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    user = User.find_by(uid: current_user.uid)
    @tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current, user_id: user.id)
    if @tweet.save
      redirect_to '/users'
    else
      render '/tweets/new'
    end
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to '/'
  end
  
end
