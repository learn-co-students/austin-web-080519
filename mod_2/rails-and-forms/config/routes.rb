Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  # get '/doctors', to: 'doctors#index'
  # resources :doctors, only: [:index]
  # These two are the same!
end
