Rails.application.routes.draw do
  root "static_pages#index"
  get "/resources", to: "static_pages#resources"

<<<<<<< HEAD
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :users do
    resources :messagerie, only: [:index, :show]
  end
||||||| 6d0a862
  devise_for :users, :controllers => {:registrations => "registrations"}
 
=======
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', :registrations => "registrations" }
 
>>>>>>> actioncable_lasttry
  resources :projects
  resources :messages, only: [:create]
  resources :challenges, only: [:index, :show]
  resources :joint_users_to_projects, only: [:create, :destroy]
  get "/joint_the_challenge/:id_user/:id_challenge", to: "joint_the_challenge#index", as: "joint_the_challenge"

  namespace :admin do
<<<<<<< HEAD
    root "static_pages#index"
    resources :projects
    resources :users
    resources :challenges
    resources :neededs
||||||| 6d0a862
    root 'static_pages#index'
    resources :projects
    resources :users
    resources :challenges
    resources :neededs
=======
    root 'static_pages#index'
    resources :projects, except: [:show]
    resources :users, only: [:index,:destroy,:update]
    resources :challenges, except: [:update,:edit,:show]
    resources :neededs, except: [:update,:edit,:show]
>>>>>>> actioncable_lasttry
  end
end
