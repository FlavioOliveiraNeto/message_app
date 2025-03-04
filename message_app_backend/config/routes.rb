Rails.application.routes.draw do
  post '/login', to: 'authentication#authenticate'
  resources :users, only: [:index, :show]
  resources :messages, only: [:index, :create]
  get 'metrics', to: 'metrics#index'
end
