Rails.application.routes.draw do
  root "static_pages#index"
  get '/resources', to:'static_pages#resources'

  devise_for :users, :controllers => {:registrations => "registrations"}
 
  resources :projects
  resources :challenges, only: [:index, :show]
  resources :joint_users_to_projects, only: [:create,:destroy]
end
