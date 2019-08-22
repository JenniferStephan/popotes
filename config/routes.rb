Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :orders, only: [ :new, :create ] do
    member do
      post 'change_status'
    end
  end
  get "/my_meals", to: "meals#view_my_meals", as: "my_meals"
  get "/my_meal/:id", to: "meals#view_my_meal", as: "my_meal"
  get "/my_orders", to: "orders#view_my_orders", as: "my_orders"


  resources :meals do
    collection do
      get 'top_five'
    end
    resources :meal_ingredients, only: [:new, :create]
  end
end
