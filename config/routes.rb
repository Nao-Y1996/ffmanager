Rails.application.routes.draw do
  root  'home#index'
  devise_for :users
  resources :users, only: [:index,:show,:edit,:update]
  patch 'user/change_is_admin', to: 'users#change_is_admin'
  resources :genres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
