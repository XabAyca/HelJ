Rails.application.routes.draw do
  root "static_pages#index"
  get "/resources", to: "static_pages#resources"
  get "/good_project", to: "static_pages#good_project"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", :registrations => "registrations" }

  resources :users do
    resources :messaging, only: [:index, :show]
  end
  resources :projects
  resources :messages, only: [:create]
  resources :challenges, only: [:index, :show]
  resources :joint_users_to_projects, only: [:create, :destroy]
  resources :joint_users_to_ppations, only: [:create, :destroy]

  namespace :admin do
    root "static_pages#index"
    resources :projects, except: [:show]
    resources :users, only: [:index, :destroy, :update]
    resources :challenges, except: [:update, :edit, :show]
    resources :neededs, except: [:update, :edit, :show]
  end
end
