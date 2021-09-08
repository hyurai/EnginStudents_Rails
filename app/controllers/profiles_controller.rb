class ProfilesController < ApplicationController
    def show
       @profile = Profile.find(params[:id])
    end
    
    def update
        profile = Profile.find(params[:id])
        profile.update(url: params[:url],one_word_comment: params[:one_word_comment],)
        
    end
end
