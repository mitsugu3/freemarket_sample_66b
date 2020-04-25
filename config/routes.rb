Rails.application.routes.draw do
  get 'posts/index'
  get 'products/show'
  get 'products/confirmation'
  get 'users/show'
  get 'productsnew/index'
  devise_for :users
  resources :products, :messages
  root "posts#index"
  
end
