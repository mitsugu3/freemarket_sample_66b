Rails.application.routes.draw do
  get 'productsnew/new'

  get 'productsnew/create'

  get 'posts/index'
  get 'products/show'
  get 'products/confirmation'
  get 'users/show'
  get 'productsnew/new'
  devise_for :users
  resources :products, :messages
  root "posts#index"
  
end
