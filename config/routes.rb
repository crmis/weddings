Rails.application.routes.draw do

  devise_for :users
  resources :rmcats
  resources :rooms
  
  resources :extras

  root :to => redirect('/pages/home')

  get 'pages/home'
  get 'pages/contactus'

end
