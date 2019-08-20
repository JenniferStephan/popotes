Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :orders, only: [ :new, :create ]
  get "/my_meals", to: "meals#view_my_meals", as: "my_meals"
  get "/my_orders", to: "meals#view_my_orders", as: "my_orders"
  resources :meals do
    resources :meal_ingredients, only: [:new, :create]
  end
end
