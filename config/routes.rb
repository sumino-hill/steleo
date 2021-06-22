Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"
  resources :lives do
  end
end
