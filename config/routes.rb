Rails.application.routes.draw do
  get 'posts/index'
  get 'product/show'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'

  devise_for :users
  resources :products, :messages


  root "posts#index"
  
end
