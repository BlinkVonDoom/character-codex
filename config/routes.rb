# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'pages#index'

  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    get 'signup' => 'devise/registrations#new'
  end

  get '/numenera_character/:id', to: 'numenera_characters#show', as: 'numenera_character'
  resource :numenera_characters
end
