Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "comments#index"

  resources :comments

  resources :users do
    collection do
      get :attachable
    end
  end
end
