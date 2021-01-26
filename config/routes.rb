Rails.application.routes.draw do
  resources :ratings, only: [:index, :show, :create]
  resources :activities, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
