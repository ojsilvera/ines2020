Rails.application.routes.draw do
  resources :poll_headers
  resources :question_categories
  resources :inst_careers
  resources :group_fields
  resources :fields
  resources :groups
  resources :genders
  resources :institutions
  resources :faculties
  resources :careers
  resources :categories
  resources :answers
  resources :questions
  resources :indicators
  resources :factors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
