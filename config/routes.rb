Rails.application.routes.draw do
  

  get 'toppages/index'
  get 'posts/create'
  get 'posts/destroy'
  get 'signup', to: 'users#new'
  get 'microposts', to: 'microposts#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root to: 'users#index'
  resources :users
  resources :microposts, only: [:create, :destroy]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
