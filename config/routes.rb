Rails.application.routes.draw do

  devise_for :users
  resources :rmcats
  resources :rooms

  root :to => redirect('/pages/home')

  get 'pages/home'
  get 'pages/contactus'

end
