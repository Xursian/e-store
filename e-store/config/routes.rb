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
  
  match "remove_product_to_cart" => "products#remove_product_to_cart", :as => "remove_product_to_cart", :via => :post
  
  match "checkout" => "products#checkout", :as => "checkout", :via => :post
 # match "checkout" => "products#clear_cart", :as => "clear_cart", :via => :post
 
 # match "purchase" => "products#purchase", :as => "purchase", :via => :post
  match "purchase" => "products#purchase", :as => "purchase", :via => :get
  match "customers" => "customers#new", :as => "customers", :via => :get
  
  #match "customers/:id" => "products#purchase", :as => "purchase", :via => :get
  #match "customers" => "products#purchase", :as => "purchase", :via => :get
  
  
 # match "/customer" => "customers#index"
 # match "/order" => "orders#index"
 # match "/product" => "products"

devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
