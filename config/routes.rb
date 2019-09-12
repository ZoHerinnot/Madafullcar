Rails.application.routes.draw do

  resources :car  do 
    resources :pictures , only: [:create]
  end
 
  devise_for :users

  resources :users, only: [:show] do 
    resources :avatars , only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
end
