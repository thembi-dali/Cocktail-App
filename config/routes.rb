Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
  resources :doses, only: [:create, :destroy]
  end
  resources :ingredients, only: [:show]

  root "cocktails#index"
end
