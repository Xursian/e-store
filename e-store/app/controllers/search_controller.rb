class SearchController < ApplicationController
  
  def index
    @products = Product.order(:name)
    
    if session[:count].nil?
      session[:count] = 1
    else 
      session[:count] += 1
    end
    
    @count = session[:count]

    
  end
  
  def search
  end # Loads up the search.html.erb view file.
  
  
  
  def add_item
    session[:items] << params[:id]
    redirect_to root_url
  end

  def remove_item
    session[:items].delete(params[:id])
    redirect_to root_url
  end
  
  def clear_items
    session[:items] = nil
    redirect_to root_url
  end
  
end