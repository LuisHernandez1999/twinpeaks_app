Rails.application.routes.draw do
  get "templates/home"
  root to: 'templates#home'
  devise_for :users
  resources :characters
end
