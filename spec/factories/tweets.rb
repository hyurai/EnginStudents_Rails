FactoryBot.define do
  factory :tweet,class: Tweet do
    association user
    text {"hogehoge"}
  end
  
  factory :tweet_1,class: Tweet do
    association user
    text {"今日は疲れた"}
  end
end
