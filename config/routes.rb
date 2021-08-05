Rails.application.routes.draw do


  namespace :api do

    resources :authors
    resources :users
    resources :books do
    resources :reviews
    resources :rates, only: :create
  end
  end
end
