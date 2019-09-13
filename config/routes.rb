Rails.application.routes.draw do
  resources :car

  devise_for :users
  resources :users, only: [:show]
  resources :comments
  resources :answers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
end
