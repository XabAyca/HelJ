Rails.application.routes.draw do
  root "static_pages#index"
  get "/resources", to: "static_pages#resources"

  resources :users do
    resources :messagerie, only: [:index, :show]
  end
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", :registrations => "registrations" }

  resources :projects
  resources :messages, only: [:create]
  resources :challenges, only: [:index, :show]
  resources :joint_users_to_projects, only: [:create, :destroy]
  get "/joint_the_challenge/:id_user/:id_challenge", to: "joint_the_challenge#index", as: "joint_the_challenge"

  namespace :admin do
    root "static_pages#index"
    resources :projects, except: [:show]
    resources :users, only: [:index, :destroy, :update]
    resources :challenges, except: [:update, :edit, :show]
    resources :neededs, except: [:update, :edit, :show]
  end
end
