Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :patients
  resources :doctors
  root to: 'home#index'
  get '/patient/profile', to: "patients#profile"
  get '/doctor/profile',to:"doctors#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
