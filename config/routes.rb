Rails.application.routes.draw do
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'login', to: 'sessions#new', as: 'login'
  get 'signup', to: 'users#new', as: 'signup'
  resources :sessions
  get 'sessions/new'

  resources :users
  root to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
