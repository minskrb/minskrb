Rails.application.routes.draw do
	resource :event
	root 'event#index'
end