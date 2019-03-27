class TOrdersController < ApplicationController
  before_action :set_t_order, only: [:show, :edit, :update, :destroy]

  # GET /t_orders
  # GET /t_orders.json
  def index
    @t_orders = TOrder.all
  end

  # GET /t_orders/1
  # GET /t_orders/1.json
  def show
  end

  # GET /t_orders/new
  def new
    @t_order = TOrder.new
  end

  # GET /t_orders/1/edit
  def edit
  end

  # POST /t_orders
  # POST /t_orders.json
  def create
    @t_order = TOrder.new(t_order_params)

    respond_to do |format|
      if @t_order.save
        format.html { redirect_to @t_order, notice: 'T order was successfully created.' }
        format.json { render :show, status: :created, location: @t_order }
      else
        format.html { render :new }
        format.json { render json: @t_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_orders/1
  # PATCH/PUT /t_orders/1.json
  def update
    respond_to do |format|
      if @t_order.update(t_order_params)
        format.html { redirect_to @t_order, notice: 'T order was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_order }
      else
        format.html { render :edit }
        format.json { render json: @t_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_orders/1
  # DELETE /t_orders/1.json
  def destroy
    @t_order.destroy
    respond_to do |format|
      format.html { redirect_to t_orders_url, notice: 'T order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_order
      @t_order = TOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_order_params
      params.require(:t_order).permit(:price)
    end
end
