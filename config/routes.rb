Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	devise_for :users

	resources :rooms do
		resources :viewings
    resources :bookings
	end

	resources :rmcats
	resources :extras
	resources :extracats
	resources :enquiries
  resources :additions

	root :to => redirect('/pages/home')
	get 'pages/home'
	get 'pages/contactus' => 'enquiries#new'
end
