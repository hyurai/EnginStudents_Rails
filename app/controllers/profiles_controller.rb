class ProfilesController < ApplicationController
    def show
       @profile = Profile.find(params[:id])
    end
    
    def update
        profile = Profile.find(params[:id])
        profile.update(front_img: params[:front_img],back_img: params[:back_img],url: params[:url],one_word_comment: params[:one_word_comment])
        redirect_back(fallback_location: root_path)
    end
end
