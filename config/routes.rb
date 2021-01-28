Rails.application.routes.draw do
  
  resources :ratings
  resources :activities

  get '/activities_trending', to: 'activities#trending_activities'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
