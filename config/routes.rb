Rails.application.routes.draw do

  root "users#index"

  resources :users, only: [:index, :create, :edit, :update]
end