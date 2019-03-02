Rails.application.routes.draw do

	root 'welcome#index'

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		confirmations: 'users/confirmations',
		passwords: 'users/passwords',
		registrations: 'users/registrations',
		unlocks: 'users/unlocks'
	},
	path: 'auth', path_names: { 
  	sign_in: 'login', 
  	sign_out: 'logout', 
  	password: 'secret', 
  	confirmation: 'verification', 
  	unlock: 'unblock', 
  	registration: 'register', 
  	sign_up: 'sign_up' 
  }	

end
