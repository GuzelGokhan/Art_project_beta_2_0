Rails.application.routes.draw do
  devise_for :users
  root to: 'galeries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/exhibitions/:id/video', to: 'exhibitions#video', as: :video

  resources :galeries do 
    resources :exhibitions, module: :galeries, only: [:new, :create, :show]
  end
 
  resources :exhibitions do
     resources :showrooms, module: :exhibitions, only: [:new, :create, :show]
  end

  resources :exhibitions do
    resources :art_pieces, module: :exhibitions, only: [:new, :create, :index]
  end
  
  resources :showrooms do
    resources :art_pieces, module: :showrooms, only: [:show, :index]
  end

  resources :art_pieces, only: [:show, :index]
end
