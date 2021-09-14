class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
        @likes = Like.all
    end
    
    def new
        @tweets = Tweet.search(params[:company_name],params[:entry_date],params[:start_date],params[:end_date])
    end
    
    def create
        tweet = Tweet.create(user_id: params[:user_id],title: params[:title],company_name: params[:company_name],job: params[:job],text: params[:text],entry_date: params[:entry_date],start_date: params[:start_date],end_date: params[:end_date])
        redirect_to '/tweets'
    end
    
    def show
        @tweet = Tweet.find(params[:id])
        @likes = Like.all
        @comments = @tweet.comments
    end
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to '/tweets'
    end
end
