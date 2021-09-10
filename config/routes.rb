Rails.application.routes.draw do
  resources :dining_tables
  resources :tables
  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
