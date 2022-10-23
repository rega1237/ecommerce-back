class BuySellsController < ApplicationController
  def index
    @buy_sells = BuySell.where(user_id: current_user.id)
    render json: @buy_sells
  end

  def show
    @buy_sell = BuySell.find(params[:id])
    render json: @buy_sell
  end
  
  def new
    @buy_sell = BuySell.new
  end

  def create
    @buy_sell = BuySell.new(product_id: params[:product_id], user_id: current_user.id)
    if @buy_sell.save
      render json: { status: 200, message: 'BuySell created successfully', data: @buy_sell }, status: :ok
    else
      render json: { status: 400, message: 'Bad request' }
    end
  end

  def edit
    @buy_sell = BuySell.find(params[:id])
  end

  def update
    @buy_sell = BuySell.find(params[:id])
    if @buy_sell.update(buy_sell_params)
      render json: { status: 200, message: 'BuySell updated successfully', data: @buy_sell }, status: :ok
    else
      render json: { status: 400, message: 'Bad request' }
    end
  end

  def destroy
    @buy_sell = BuySell.find(params[:id])
    @buy_sell.destroy
    render json: { status: 200, message: 'BuySell deleted successfully' }, status: :ok
  end
end
