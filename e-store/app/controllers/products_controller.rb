class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end

    if session[:count].nil?
      session[:count] = 1
    else 
      session[:count] += 1
    end
    
    @count = session[:count]
  end
  
  def search
    @products = Product.search(params[:search])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  def search
    @keyword = params[:keyword]
    
    @products = Product.where("name LIKE ?", "%#{@keyword}%")
  end
  
  def add_product_to_cart
    session[:cart] = []  if session[:cart].nil?
  ##  session[:test] = { :id => params[:id], :qty => params[:qty] }
   session[:cart] << Cart_item.new(params[:id], params[:qty])
    redirect_to root_url
  end
  
  def remove_product_to_cart
  #  session[:cart].delete(params[:id])
    session[:cart].delete(params[:id])
    redirect_to root_url
  end
  
  def clear_cart
    session[:cart] = nil
    redirect_to root_url
  end
  
  
end
