# frozen_string_literal: true

Rails.application.routes.draw do
  resources :dashboard, only: :index

  root to: 'dashboard#index'
end
