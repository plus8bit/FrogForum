Rails.application.routes.draw do
  resources :discussions
  root 'discussions#index'

  get '/auth/:provider/callback' => 'sessions#new'
end
