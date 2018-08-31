Rails.application.routes.draw do
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_error', via: :all
  match '/422', to: 'errors#unacceptable', via: :all

  get '/events/all', to: 'events#show'

  root 'events#index'
  devise_for :admin_users

  resources :contact_us, only: %i[create index]
  resources :friends, only: %i[index]
  resources :about, only: %i[index]

  resources :events, only: %i[index] do
    resources :speakers, only: %i[index], module: :events
    resources :photos, only: %i[index], module: :events
    resources :videos, only: %i[index], module: :events
  end

  namespace :admin do
    root to: 'events#index'

    resources :events
    resources :event_items
    resources :event_media_partners do
      resource :logos, only: :destroy, module: :event_media_partners
    end
    resources :videos
    resources :images do
      resource :photos, only: :destroy, module: :images
    end
  end
end
