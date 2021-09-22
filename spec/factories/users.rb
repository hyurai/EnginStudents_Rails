FactoryBot.define do
  factory :user do
    name {"hoge"}
    email {"hoge@example.com"}
    password {"10101010"}
  end
  
  factory :takashi, class: User do
    name {"Takashi"}
    sequence(:email) {Faker::Internet.email}
    password {"123456789"}
  end
end
