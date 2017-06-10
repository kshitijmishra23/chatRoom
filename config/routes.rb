Rails.application.routes.draw do
  root 'chatrooms#index' 
  resources :chatrooms
  resources :messages
  get "chatrooms/new" => "chatrooms#new"
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
