Rails.application.routes.draw do
  get 'posts/index'
  get 'product/show'
  devise_for :users
  resources :products, :messages
  root "posts#index"
  
end
