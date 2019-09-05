Rails.application.routes.draw do
  resources :patients, only: [:index, :show, :new, :create]
  resources :doctors, only: [:index, :show]
end
