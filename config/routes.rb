Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :trades
  resources :services
  resources :abouts
  resources :answers
  resources :authors
  resources :books
  resources :contacts

  resources :banners, only: [:new, :create, :index, :destroy]


  root :to => 'home#index',:as =>:root

  get 'home/index'

  get 'home/anwser_key'
  get 'home/trades'
  get    '/soba_admin_login',   to: 'sessions#new'
  post   '/soba_admin_login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '*path', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
