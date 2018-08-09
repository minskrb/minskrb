Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  root 'events#index'
end
