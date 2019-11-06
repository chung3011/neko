Rails.application.routes.draw do
	get 'admin/index'
	get 'sessions/new'
	get 'sessions/create'
	get 'sessions/destroy'
	resources :users
	get 'home/index'
	resources :foods
	resources :cats
	root :to => 'home#index'
	get 'admin' => 'admin#index'
  
	controller :sessions do
		get 'login' => :new
		post 'login' => :create
		delete 'logout' => :destroy
	end
	get "/signup", to: "users#new"
	post "/signup", to: "users#create"
end
