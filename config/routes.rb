Rails.application.routes.draw do
  root "categories#index"

  resources :categories do
    resources :games
  end
end
