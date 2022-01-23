Rails.application.routes.draw do
  resources :tests
 root to:"posts#index"
  devise_for :users
  resources :likes do 
  	member do 
  		get 'like'
  		get 'unlike'
  	end
  end

  resources :posts do
    resources :comments
    
  end
end