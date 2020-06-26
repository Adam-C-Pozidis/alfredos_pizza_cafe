Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cards, only: %i[update create destroy]
  resource :shopping_carts, only: :show
  resources :pages, only: :index
end
