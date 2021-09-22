require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe "Tweets", type: :request do
    describe 'GET /' do
        it 'リクエストが成功すること' do
            get '/'
            expect(response).to have_http_status(200)
        end
        
        it 'topテンプレートで表示されること' do
            get '/'
            expect(response).to render_template :top
        end
    end
    
    
    describe 'GET #index' do
      FactoryBot.create :takashi
      let(:profile) {FactoryBot.create(:profile)}
      FactoryBot.create :tweet_1

      
    
      it 'リクエストが成功すること' do
          get '/tweets'
          expect(response).to have_http_status(200)
      end
      
      it 'indexテンプレートが表示されること' do
          get '/tweets'
          expect(response).to render_template :index
      end
      
      it '@tweetsが取得できていること' do
          get '/tweets'
          expect(response.body).to include "今日は疲れた"
      end
    end
    
    describe 'GET #new' do
      
      FactoryBot.create :takashi

      let(:profile) {FactoryBot.create(:profile)}
      
      it 'リクエストが成功すること' do
          get '/tweets/new' 
          expect(response).to have_http_status(200)
      end
      
      it 'newテンプレートが表示される' do
          get '/tweets/new' 
          expect(response).to render_template :new
      end
    end
end
