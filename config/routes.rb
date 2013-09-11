PostitTemplate::Application.routes.draw do
  resources :posts, except :destroy
  resource :comments
  root to: 'posts#index'

end
