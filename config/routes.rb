Rails.application.routes.draw do
  root "static_pages#index"
  get '/resources', to:'static_pages#resources'

  devise_for :users, :controllers => {:registrations => "registrations"}
 
  resources :projects
  resources :challenges, only: [:index, :show]
  resources :joint_users_to_projects, only: [:create,:destroy]
  get '/joint_the_challenge/:id_user/:id_challenge', to: 'joint_the_challenge#index', as: 'joint_the_challenge'
end
