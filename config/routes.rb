Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/meals/my_meals", to: "meals#view_my_meals", as: "my_meals"
  get "/meals/my_orders", to: "meals#view_my_orders", as: "my_orders"

  # resources :meals do
  #   resources :orders, only: [:index, :show, :new, :create]
  # end
  resources :meals
  get "/index", to: "meals#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
