Rails.application.routes.draw do
  root 'chatrooms#index' 
  get "chatrooms/new" => "chatrooms#new"
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount ActionCable.server => '/cable'

  resources :chatrooms, param: :id
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
