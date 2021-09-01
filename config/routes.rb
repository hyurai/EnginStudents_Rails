Rails.application.routes.draw do
  devise_for :users
  resources :tweets,only:[:index,:new,:create,:destroy]
  resources :tweets,only:[:show] do
    resources :comments,only:[:create,:destroy]
  end
  resources :likes,only[:create,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
