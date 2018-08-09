Rails.application.routes.draw do
  resources :event
  root 'event#index'
end
