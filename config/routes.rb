Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cards, only: %i[update create destroy]
  resource :shopping_carts, only: :show
  resources :pages, only: %i[index]

  get 'confirmation', to: 'pages#confirmation'
  get 'success', to: 'pages#success'
end
