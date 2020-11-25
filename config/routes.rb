Rails.application.routes.draw do
  resources :faculties
  resources :creers
  resources :institutions
  resources :groups
  resources :genders
  resources :questions
  resources :indicators
  resources :factors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
