# frozen_string_literal: true

Rails.application.routes.draw do
  resources :madoffs, only: %i[index new create] do
    post :upvote, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'madoffs#index'
end
