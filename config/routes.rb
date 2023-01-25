# frozen_string_literal: true

Rails.application.routes.draw do
  resources :landing_page, only: :show
  resource :quiz, only: [:new, :create]
  resource :quiz_result, only: :show

  root to: 'landing_page#index'
end
