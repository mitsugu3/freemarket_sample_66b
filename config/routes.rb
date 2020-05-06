Rails.application.routes.draw do
  get 'posts/index'
  get 'product/show'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'

  devise_for :users
  resources :products, :messages
  resources :signups do
    collection do
      get 'step1'

    end
  end

  root "posts#index"
  
end
