Rails.application.routes.draw do
  resources :cars

  devise_for :users
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
end
