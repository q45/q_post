PostitTemplate::Application.routes.draw do
	root to: 'posts#index'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'

  resources :posts, except: :destroy do
  	resource :comments #:only => :create
  	#/posts/2/comments 
  end
  resources :categories, only: [:new, :create, :show]
  resources :users


end
