Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :coolthings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
