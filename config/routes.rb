Rails.application.routes.draw do


	devise_for :users

	resources :rooms do
		resources :viewings
	end

  resources :rooms do
    resources :bookings
  end

	resources :rmcats
	resources :extras
	resources :extracats
	resources :enquiries

	root :to => redirect('/pages/home')
	get 'pages/home'
	get 'pages/contactus' => 'enquiries#new'
end
