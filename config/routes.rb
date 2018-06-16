Rails.application.routes.draw do

  get 'home/index'
  get 'home/admin' 
  get 'home/reporting'

  devise_for :users
  resources :scoreboards
  root 'home#index'
  get 'showscoreboards', to: 'scoreboards#show'
end
