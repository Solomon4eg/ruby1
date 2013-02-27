class RelTableOrdersController < ApplicationController
  # GET /rel_table_orders
  # GET /rel_table_orders.json
  def index
    @rel_table_orders = RelTableOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rel_table_orders }
    end
  end

  # GET /rel_table_orders/1
  # GET /rel_table_orders/1.json
  def show
    @rel_table_order = RelTableOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rel_table_order }
    end
  end

  # GET /rel_table_orders/new
  # GET /rel_table_orders/new.json
  def new
    @rel_table_order = RelTableOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rel_table_order }
    end
  end

  # GET /rel_table_orders/1/edit
  def edit
    @rel_table_order = RelTableOrder.find(params[:id])
  end

  # POST /rel_table_orders
  # POST /rel_table_orders.json
  def create
    @rel_table_order = RelTableOrder.new(params[:rel_table_order])

    respond_to do |format|
      if @rel_table_order.save
        format.html { redirect_to @rel_table_order, notice: 'Rel table order was successfully created.' }
        format.json { render json: @rel_table_order, status: :created, location: @rel_table_order }
      else
        format.html { render action: "new" }
        format.json { render json: @rel_table_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rel_table_orders/1
  # PUT /rel_table_orders/1.json
  def update
    @rel_table_order = RelTableOrder.find(params[:id])

    respond_to do |format|
      if @rel_table_order.update_attributes(params[:rel_table_order])
        format.html { redirect_to @rel_table_order, notice: 'Rel table order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rel_table_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rel_table_orders/1
  # DELETE /rel_table_orders/1.json
  def destroy
    @rel_table_order = RelTableOrder.find(params[:id])
    @rel_table_order.destroy

    respond_to do |format|
      format.html { redirect_to rel_table_orders_url }
      format.json { head :no_content }
    end
  end
end
