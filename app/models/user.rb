class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :likes
  has_many :profiles
  has_many :likes
  has_many :likes_tweets,through: :likes,source: :tweet

  def liked(tweet)
    self.likes.where(tweet_id: tweet.id).first()
  end
  def likes_tweets_profile(like)
    Profile.where(user_id: like.user.id).first()
  end
end
