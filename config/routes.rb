Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get '/about', to: 'home#index'
  get '/contact', to: 'home#index'

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end

  get '/api-docs', to: 'api_docs#index'
end
