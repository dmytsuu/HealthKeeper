# frozen_string_literal: true

Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  mount ActionCable.server, at: '/cable'

  root 'pages#home'
  get 'pages/home'
  get 'dashboard', to: 'dashboard#index'

  devise_for :physicians, controllers: {
    sessions: 'physicians/sessions'
  }

  devise_for :patients, controllers: {
    sessions: 'patients/sessions',
    registrations: 'patients/registrations'
  }

  resources :appointments
  resources :conversations do
    resources :messages
  end
end
