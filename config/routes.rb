# frozen_string_literal: true

Rails.application.routes.draw do
  root 'records#index'
  resources :records, except: :destroy

  resources :music_reserves, only: %i[show index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
