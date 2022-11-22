Rails.application.routes.draw do
  resources :projects do
    resources :tasks 
  end
  
  resources :tasks do
    resources :comments
    resources :labels
  end  

  resources :projects do
    resources :comments
    resources :labels
  end

  resources :labels
  resources :off_duties
  resources :daily_statuses
  resources :pins  

  resources :statuses, only: [], param: :index do
    member do
      delete '(:id)' => "statuses#destroy", as: ""
    end
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  # Defines the root path route ("/")
  root "projects#index"
end
