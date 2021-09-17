class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes

    def tweet_profile(tweet)
        Profile.where(user_id: tweet.user.id).first()
    end
    
    def self.search(company_name,entry_date,start_date,end_date)
        if (company_name.present?)
            self.where('company_name Like ?',"%#{company_name}%")
        elsif(entry_date.present?)
            self.where('entry_date >= ?',"#{entry_date}")
        elsif(start_date.present?)
            self.where('start_date >= ?',"#{start_date}")
        elsif(end_date.present?)
            self.where('end_date <= ?',"#{end_date}")
        elsif(start_date.present? && end_date.present?)
            self.where('start_date <= ?',"#{start_date}")
                .where('end_date >= ?',"#{end_date}")
        else
            self.all
        end
    end
end
