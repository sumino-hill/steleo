Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"
  resources :lives, only: [:create,:index,:new]do
  end
end
