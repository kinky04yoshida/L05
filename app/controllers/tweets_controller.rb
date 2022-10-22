class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    user = User.find_by(uid: current_user.uid)
    tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current, user_id: user.id)
    tweet.save
    redirect_to '/'
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
  
  def like(user)
    likes.create(user_id: user.id)
  end

  def unlike(user)
    likes.find_by(user_id: user.id).destroy
  end

  def liked?(user) #いいね済みか調べる(true / false)
    like_users.include?(user)
  end
  
end
