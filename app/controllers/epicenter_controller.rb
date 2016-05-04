class EpicenterController < ApplicationController
  def feed
      @following_tweets = []
      @tweets = Tweet.all     

      @tweets.each do |tweet|
          current_user.following.each do |id|
              if tweet.user_id  == id
                  @following_tweets.push(tweet)
              end
          end
      end
  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
  end

  def unfollow
  end
end