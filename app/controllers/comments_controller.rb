class CommentsController < ApplicationController
    def create
        comment = Comment.create(user_id: params[:user_id],tweet_id: params[:tweet_id],text: params[:text])
        redirect_to '/tweets'
    end
    
    def destroy
        comment = Commnet.find(params[:id])
        comment.destroy
        redirect_to '/tweets'
    end
end
