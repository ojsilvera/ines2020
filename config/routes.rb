Rails.application.routes.draw do
  resources :poll_bodies
  resources :answers
  resources :categories
  resources :questions
  resources :indicators
  resources :factors
  resources :poll_headers
  resources :genders
  resources :groups
  resources :fields
  resources :institutions
  resources :careers
  resources :faculties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
