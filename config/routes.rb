# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope 'v1' do
    get '/modsulator/version'
    resources :about, only: :index
    resources :spreadsheet, only: :index
    resources :modsulator, only: %i[create version]
    resources :normalizer, only: :create
  end
end
