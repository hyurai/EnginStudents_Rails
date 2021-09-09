class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes



    def tweet_profile(tweet)
        Profile.where(user_id: tweet.user.id).first()
    end
    

end
