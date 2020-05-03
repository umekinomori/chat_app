Rails.application.routes.draw do
  root to: 'rooms#show'
  resources :rooms, only: [:create, :show]
  mount ActionCable.server => '/cable'
end
