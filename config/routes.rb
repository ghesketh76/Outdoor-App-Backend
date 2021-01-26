Rails.application.routes.draw do
  resources :rating_joiners
  resources :activities
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
