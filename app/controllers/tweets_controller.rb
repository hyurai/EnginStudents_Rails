class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
    
    def new
    end
    
    def create
        tweet = Tweet.create(user_id: params[:user_id],)
    end
    
    def show
        @tweet = Tweet.find(params[:id])
    end
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to '/tweets'
    end
end
