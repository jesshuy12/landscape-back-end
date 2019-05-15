Rails.application.routes.draw do
  resources :user_types
  resources :types
  resources :user_skills
  resources :user_images
  resources :skills
  resources :images
  resources :users

  post "/login", to: "auth#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
