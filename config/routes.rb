Rails.application.routes.draw do
  get "challenges/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :challenges, only: [:index, :show]
end
