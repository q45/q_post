PostitTemplate::Application.routes.draw do
  resources :posts, except: :destroy do
  	resource :comments, :only => :create
  end
  resources :categories
  resources :users
  root to: 'posts#index'

end
