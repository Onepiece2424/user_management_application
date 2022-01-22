Rails.application.routes.draw do
  root 'requests#index'
  # get 'users/index'
  # get 'users/show'
  devise_for :users
  resources :users do
    resources :requests
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
