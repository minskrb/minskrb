Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  root 'events#index'

  devise_for :admin_users

  namespace :admin do
    root to: "events#index"

    resources :events
    resources :event_items
    resources :event_media_partners do
      delete :remove_logo
    end
    resources :videos
  end
end
