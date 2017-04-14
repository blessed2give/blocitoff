Rails.application.routes.draw do
#  get 'items/new'

  devise_for :users
  resources :items
  resources :users, only: [:show] do
    resources :items, only: [:new, :create]
  end
  authenticated :user do
    root 'users#show', as: :authenticated_root
  end
  get 'welcome/index'
  get 'welcome/about'
  root 'welcome#index'
end
