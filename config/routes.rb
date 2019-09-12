Rails.application.routes.draw do

  get 'messages/index'
  get 'messages/new'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/create'
  root 'static_pages#home'
  devise_for :users
  resources :users, only: [:show]
  resources :car

  #link for messages
  resources :conversations do #contact list
    resources :messages #message content
  end

end
