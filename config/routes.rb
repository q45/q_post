PostitTemplate::Application.routes.draw do
  resources :posts, except: :destroy do
  	resource :comments, :only => :create
  end
  resource :users
  root to: 'posts#index'

end
