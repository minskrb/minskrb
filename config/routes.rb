Rails.application.routes.draw do
  match '/404', to: "errors#not_found", via: :all
  match '/500', to: "errors#internal_error", via: :all
  match '/422', to: "errors#unacceptable", via: :all

  get '/test', to: "events#show"
  get '/friends', to: "events#friends"
  get '/about', to: "events#about"
  get '/contact_us', to: "events#contact_us"

  resources :events, only: [:index, :show]
  root 'events#index'

  resources :contact_us, only: %i[create]

  devise_for :admin_users

  namespace :admin do
    root to: "events#index"

    resources :events
    resources :event_items
    resources :event_media_partners do
      resource :logos, only: :destroy, module: :event_media_partners
    end

    resources :videos
  end
end
