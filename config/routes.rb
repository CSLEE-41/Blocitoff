Rails.application.routes.draw do
  
  devise_for :users
 
  resources :users, only: [:show] do 
    resources :items, only: [:create, :destroy]
  end

  # devise_scope :user do 
  #   unauthenticated :user do
  #     root :to => 'devise/sessions#new'
  #   end

  #   authenticated :user do
  #     root :to => 'devise/sessions#new'
  #   end
  # end

  root to: "users#show"
end
