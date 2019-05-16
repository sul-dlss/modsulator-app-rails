Rails.application.routes.draw do
  scope 'v1' do
    get '/modsulator/version'
    resources :about, only: :index
    resources :spreadsheet, only: :index
    resources :modsulator, only: %i[create version]
    resources :normalizer, only: :create
  end
end
