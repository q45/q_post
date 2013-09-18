PostitTemplate::Application.routes.draw do
  resources :posts, except: :destroy do
  	resource :comments, :only => :create
  end
  resources :categories, only: [:new, :create, :show]
  resources :users
  root to: 'posts#index'

end
