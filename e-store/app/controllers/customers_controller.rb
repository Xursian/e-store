class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id]) ##gets customer info
    #order = Order.new
    order = @customer.orders.build
    # order.pst_rate = Provence.where(:id => @customer.provence_id).first.pst
    # order.gst_rate = Provence.where(:id => @customer.provence_id).first.gst
    # order.hst_rate = Provence.where(:id => @customer.provence_id).first.hst
    order.pst_rate = @customer.provence.pst
    order.gst_rate = @customer.provence.gst
    order.hst_rate = @customer.provence.hst
    order.status = "New:Owes"
    order.balance = 0.0
    order.save
    session[:order_id] = order.id
    session[:customer_id] = @customer.id

    ##have the lineitems of his products
    lineitems = Array.new
    session[:lineitem_ids] = nil
    session[:lineitem_ids] = []
    session[:cart].each do |cartItem|
      product = Product.where(:id => cartItem.itemNo).first
      lineitems = order.lineitems.build
      lineitems.quantity = cartItem.itemQty
      lineitems.product_id = product.id
      lineitems.sale_price = product.sale_price
      lineitems.save
      session[:lineitem_ids] << lineitems.id
    end
    
    redirect_to purchase_path and return
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new
    @provences = Provence.all
    @customers = Customer.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { redirect_to new_customer_path, notice: 'Please enter all fields.' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
  
  def purchase
   # redirect_to purchase
   #redirect_to purchase_path and return
  end
end
