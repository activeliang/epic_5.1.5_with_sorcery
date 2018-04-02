Rails.application.routes.draw do
  resources :sessions
  resources :users
  delete '/logout' => 'sessions#destroy', as: :logout


  root 'welcome#index'
end
