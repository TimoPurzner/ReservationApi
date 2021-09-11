Rails.application.routes.draw do
  resources :dining_tables
  resources :tables
  resources :reservations

  get "/available_tables", to: "gastro#available_tables"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
