Rails.application.routes.draw do
  resources :tests
 root to:"posts#index"
  devise_for :users
  resources :like , only: [:create , :destroy]

  resources :posts do
    resources :comments
    
  end
end