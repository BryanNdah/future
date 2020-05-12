Rails.application.routes.draw do
	root 'homes#index'
	get 'about', to: 'pages#about'
	resources :users, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
