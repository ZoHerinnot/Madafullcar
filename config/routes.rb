Rails.application.routes.draw do
  resources :car do
  resources :likes
end

  devise_for :users
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
end
