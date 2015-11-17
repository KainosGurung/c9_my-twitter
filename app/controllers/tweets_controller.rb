class TweetsController < ApplicationController
    
    def new
        @tweet = Tweet.new
    end

    def index
        @tweets = Tweet.all
    end
    
    def create 
        @tweet = Tweet.new(tweet_params)
        @tweet.user_id = current_user.id
        @tweet.likes = @tweet.dislikes = @tweet.retweets = 0
        
        if @tweet.save
            redirect_to :root
        else
            flash[:error] = 'Error posting tweet'
            render 'new'
        end
            
    end
    
    def show
        @tweet = Tweet.find_by(id: params[:id])
    end
    
private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
  
end
