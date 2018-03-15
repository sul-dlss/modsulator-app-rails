Rails.application.routes.draw do
  scope 'v1' do
    get '/modsulator/version'
    resources :about
    resources :spreadsheet
    resources :modsulator
    resources :normalizer
  end
end
