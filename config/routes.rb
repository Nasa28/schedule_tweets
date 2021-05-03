Rails.application.routes.draw do
  get 'about', to: 'about#index'

  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
