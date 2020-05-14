Rails.application.routes.draw do
  root  'home#index'
  devise_for :users
  resources :users, only: [:index,:show,:edit,:update]
  patch 'user/change_is_admin', to: 'users#change_is_admin'
  patch 'user_genre_infos/change_is_genre_leader', to: 'user_genre_infos#change_is_genre_leader'
  resources :genres
  resources :user_genre_infos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
