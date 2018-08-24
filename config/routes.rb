Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  root 'events#index'

  devise_for :admin_users

  namespace :admin do
    root to: "events#index"

    resources :events
    resources :event_items
    resources :event_media_partners do
      resource :logos, only: :destroy, module: :event_media_partners
    end
    resources :videos
    resources :images do
      resource :photos, only: :destroy, module: :images
    end

    root to: "events#index"
  end
end
