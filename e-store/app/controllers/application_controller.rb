class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :init_cart
  
  protected
  def init_cart
    session[:cart] ||= []
  end
  
end
