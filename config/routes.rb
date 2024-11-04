# frozen_string_literal: true

Rails.application.routes.draw do
  mount HealthMonitor::Engine, at: '/'
  root 'records#index'
  resources :records, except: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
