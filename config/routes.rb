Rails.application.routes.draw do
  get 'productsnew/new'
  devise_for :users
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
