# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'pages#index'

  get '/numenera_character/:id' => 'numenera_characters#show', as: :show_numenera_character
  get '/numenera_character/:id/edit' => 'numenera_characters#edit', as: :edit_numenera_character
  delete '/numenera_character/:id' => 'numenera_characters#destroy', as: :delete_numenera_character
  delete '/numenera_esoteries/:id' => 'numenera_esoteries#destroy', as: :delete_numenera_esotery
  delete '/numenera_character_skills/:id' => 'numenera_character_skills#destroy', as: :delete_numenera_skill
  resource :numenera_characters
  resources :numenera_character_skills
  resources :numenera_esoteries

  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    get 'signup' => 'devise/registrations#new'
  end
end
