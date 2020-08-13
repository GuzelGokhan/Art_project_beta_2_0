Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :galeries do 
    resources :exhibitions, module: :galeries, only: [:new, :create, :show]
  end
 
  resources :exhibitions do
     resources :showrooms, module: :exhibitions, only: [:new, :create, :show]
  end
  
  resources :showrooms do
    resources :art_pieces, module: :showrooms, only: [:new, :create]
  end

  resources :art_pieces, only: [:show]
end
