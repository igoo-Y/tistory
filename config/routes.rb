Rails.application.routes.draw do
  resources :desserts
  resources :enums
  devise_for :users

  root "boards#index"

  resources :boards do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
