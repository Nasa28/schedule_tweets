Rails.application.routes.draw do
  get 'about', to: 'about#index'

  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
