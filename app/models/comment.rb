class Comment < ApplicationRecord
    belongs_to :user
    
    def comment_profile(comment)
        Profile.where(user_id: comment.user.id).first()
    end
end
