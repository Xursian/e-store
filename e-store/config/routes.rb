EStore::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "login/register"

  post "login/create"

  post "login/validate_user"

  get "login/show_all"

  delete "login/delete"
  
  match "/login" => 'login#index'

  resources :provences


  resources :products


  resources :orders


  resources :lineitems


  resources :customers


  root :to => "products#index"
  
  
  
 # match "/customer" => "customers#index"
 # match "/order" => "orders#index"
 # match "/product" => "products"


end
