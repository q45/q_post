PostitTemplate::Application.routes.draw do
  resources :posts, except: :destroy
  resource :comments
  resource :users
  root to: 'posts#index'

end
