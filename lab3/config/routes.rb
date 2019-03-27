Rails.application.routes.draw do
  resources :t_orders
  resources :tickets
  resources :events
  resources :ev_venues
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
