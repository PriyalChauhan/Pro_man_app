Rails.application.routes.draw do
  resources :projects do
    resources :tasks 
  end
  
  resources :tasks do
    resources :comments
  end  

  resources :projects do
    resources :comments
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  # Defines the root path route ("/")
  root "projects#index"
end
