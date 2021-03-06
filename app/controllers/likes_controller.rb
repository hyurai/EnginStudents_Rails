class LikesController < ApplicationController
    def index
        user_id = current_user.id
        user = User.find(user_id)
        @likes = user.likes_tweets
    end
    def create
        like = Like.create(user_id: params[:user_id],tweet_id: params[:tweet_id])
        redirect_to '/tweets'
    end
    def destroy
        like = Like.find(params[:id])
        like.destroy
        redirect_to '/tweets'
    end
end
