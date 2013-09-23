PostitTemplate::Application.routes.draw do
	root to: 'posts#index'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'

  resources :posts, except: :destroy do
    member do
      post 'vote'
    end

   # collection do
    #  get 'archives' #get route to /posts/archives
    #end
  	resource :comments, :only => [:create] do
      member do
        post 'vote'
      end
    end
  	#/posts/2/comments 
  end
  resources :categories, only: [:new, :create, :show]
  resources :users


end
