Rails.application.routes.draw do
  get 'products/new'
  devise_for :users
  resources :products
  get 'productsnew/create'
  get 'posts/index'
  get 'products/show'
  get 'login'   => 'sessions#new'
  post'login'   => 'sessions#create'
  get 'products/confirmation'
  get 'users/show'
  get 'mypage/index'
  get 'mypage/credit'
  get 'mypage/logout'
  get 'mypage/index'
  resources 'products', except: :show
  resources :signups do
    collection do
      get 'step1'
    end
  end
  root "posts#index"
  
end
