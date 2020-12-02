Rails.application.routes.draw do
  resources :poll_bodies
  resources :group_fields
  resources :poll_headers
  resources :questions
  resources :indicators
  resources :category_answers
  resources :fields
  resources :groups
  resources :institutions
  resources :genders
  resources :factors
  resources :categories
  resources :answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
