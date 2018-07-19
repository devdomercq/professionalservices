Rails.application.routes.draw do

  get 'home/index'
  get 'home/admin' 
  get 'home/reporting'

  devise_for :users
  resources :scoreboards
  resources :giving_centers
  root 'home#index'
  get 'showscoreboards', to: 'scoreboards#index'
  get 'showgiving_centers', to: 'giving_centers#index'
end
