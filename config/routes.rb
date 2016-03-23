Rails.application.routes.draw do
  jsonapi_resources :stop_times
  jsonapi_resources :stops
  jsonapi_resources :trips
  jsonapi_resources :routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
