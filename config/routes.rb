Rails.application.routes.draw do
  #user-root
  resources :form

  # Admin
  namespace :admin do
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
    resources :type_documents
  end
end
