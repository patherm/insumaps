Rails.application.routes.draw do
  resources :cidades
  devise_for :users
	root 'pages#local'
	get    '/admin'   => 'admin#index'
	get "/cidades" => "cidades#index"
	#patch		'/cidades/:id' => 'admin#index'
	#post   'sign_in'   => 'sessions#create'
	#delete 'sign_out'  => 'sessions#destroy'
	#resources :pages do
		#resources :admin
	#end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
