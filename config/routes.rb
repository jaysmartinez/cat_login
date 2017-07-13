Rails.application.routes.draw do
  resources :cats
  get 'sessions/new'
  get 'logout' => 'sessions#destroy'

  get 'users/new'
  resource  :user

  root 'sessions#new'
  resource :session

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
