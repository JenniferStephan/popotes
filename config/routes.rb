Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # resources :meals do
  #   resources :orders, only: [:index, :show, :new, :create]
  # end
  get "/index", to: "meals#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
