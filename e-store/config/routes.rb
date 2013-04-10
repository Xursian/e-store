EStore::Application.routes.draw do

  

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
  
#  match "admin" => "active_admin/devise/sessions#new",:as => "admin"
  
  match "result" => "products#search", :as => "result", :via => :post
  
  match "add_product_to_cart" => "products#add_product_to_cart", :as => "add_product_to_cart", :via => :post
  
 # match "/customer" => "customers#index"
 # match "/order" => "orders#index"
 # match "/product" => "products"

devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
