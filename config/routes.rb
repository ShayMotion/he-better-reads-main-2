Rails.application.routes.draw do
  namespace :api do
    resources :authors
    resources :books
    resources :users
    resources :reviews
  end
end
