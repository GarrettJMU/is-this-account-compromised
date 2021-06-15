Rails.application.routes.draw do
  resources :accounts, only: [:index, :create, :show, :new]
  root 'accounts#index'
  get '/status', to: 'internals#status'
  get '/upvote/:account_id', to: 'votes#upvote'
  get '/downvote/:account_id', to: 'votes#downvote'
end
