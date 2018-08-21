Rails.application.routes.draw do
  match '/404', to: "errors#not_found", via: :all
  match '/500', to: "errors#internal_error", via: :all
  match '/422', to: "errors#unacceptable", via: :all
  resources :events, only: [:index, :show]
  root 'events#index'

  devise_for :admin_users

  namespace :admin do
    resources :events
    resources :event_items
    resources :event_media_partners
    resources :videos

    root to: "events#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
