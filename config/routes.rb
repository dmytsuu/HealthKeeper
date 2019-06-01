# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :physicians, controllers: {
    sessions: 'physicians/sessions'
  }

  devise_for :patients, controllers: {
    sessions: 'patients/sessions',
    registrations: 'patients/registrations'
  }

  resources :appointments
end
