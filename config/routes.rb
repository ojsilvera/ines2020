Rails.application.routes.draw do
  resources :fields
  resources :groups
  resources :institutions
  resources :genders
  resources :factors
  resources :categories
  resources :answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
