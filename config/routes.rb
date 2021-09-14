Rails.application.routes.draw do
  devise_for :users, controllers: {
   registrations: 'users/registrations'
  }
  root to: 'tweets#index'
  resources :users,only:[:show] do
    resources :likes,only:[:index,:create,:destroy]
  end
  resources :tweets,only:[:index,:new,:create,:destroy]
  resources :tweets,only:[:show] do
    resources :comments,only:[:create,:destroy]
  end
  resources :profiles,only:[:show]
  post '/profiles/:id',to: 'profiles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
