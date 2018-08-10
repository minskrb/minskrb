Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  root 'events#index'

  devise_for :admin_users

  namespace :admin do
    resources :events

    root to: "events#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/test', to: 'test#index'
end
