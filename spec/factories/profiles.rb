FactoryBot.define do
  factory :profile do
    association :user
    front_img { Rack::Test::UploadedFile.new(File.join(Rails.root,'./public/download.png'))}
    back_img {Rack::Test::UploadedFile.new(File.join(Rails.root,'./public/download.png'))}
    url {"1234"}
    one_word_comment {"Railsを触れます"}
  end
end
