Rails.application.routes.draw do

root "static_pages#home"


  resources :car  do 
    resources :pictures , only: [:create]
    resources :likes
  end
 
  devise_for :users

  resources :comments
  resources :answers


  resources :users, only: [:show] do 
    resources :avatars , only: [:create]
  end



  #link for messages
  resources :conversations do #contact list
    resources :messages #message content
  end

end
