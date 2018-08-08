Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  root 'events#index'

  namespace :admin do
    resources :events

    root to: "events#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
