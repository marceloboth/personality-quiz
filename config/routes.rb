# frozen_string_literal: true

Rails.application.routes.draw do
  resources :landing_page, only: :index
  resource :quiz, only: :show

  root to: 'landing_page#index'
end
