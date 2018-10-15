Rails.application.routes.draw do
  #resources :insumos
 #  resources :cidades do
	# resources :distribuidoras
 #  end

 	# resources :insumos do
  #     resources :cidades do
  #       resources :distribuidoras
  #     end
  # 	end

	resources :cidades do
		resources :distribuidoras do
			resources :insumos
		end
	end
 
	root 'pages#local'
 	
 	devise_for :users
	authenticated :user do
    	root 'admin#index', as: :authenticated_root
  	end
	# get '/cidades' => 'cidades#index'
	get '/admin' => 'admin#index'
	delete '/admin' => 'admin#index'
	get 'pages/select' => 'pages#select'
	delete 'pages/select' => 'pages#select'
	get 'pages/select2' => 'pages#select2'
	delete 'pages/select2' => 'pages#select2'
	get 'pages/select3' => 'pages#select3'
	delete 'pages/select3' => 'pages#select3'
	#patch		'/cidades/:id' => 'admin#index'
	#post   'sign_in'   => 'sessions#create'
	#delete 'sign_out'  => 'sessions#destroy'
	#resources :pages do
		#resources :admin
	#end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
