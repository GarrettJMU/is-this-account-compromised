Rails.application.routes.draw do
  resources :accounts, only: [:index, :create, :show, :new]
  root 'accounts#index'
  get '/status', to: 'internals#status'
end
