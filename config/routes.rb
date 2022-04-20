Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :patients
  resources :doctors
  resources :appointments
  resources :categories

  root to: 'home#index'
  get '/patient/profile', to: "patients#profile"
  get '/doctor/profile',to:"doctors#profile"
  get '/doctors',to: "categories#doctors_by_category"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
