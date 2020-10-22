Rails.application.routes.draw do

  root  'home#index'

  devise_for :users
  resources :users, only: [:index,:show,:edit,:update]
  patch 'user/change_is_admin', to: 'users#change_is_admin'

  resources :genres

  patch 'user_genre_infos/add_genre_leader', to: 'user_genre_infos#add_genre_leader'
  patch 'user_genre_infos/destroy_genre_leader', to: 'user_genre_infos#destroy_genre_leader'
  patch 'user_genre_infos/destroy_request', to: 'user_genre_infos#destroy_request'
  resources :user_genre_infos, only: [:create, :update, :destroy]

  resources :events
  resources :event_participations, only: [:create,:update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
