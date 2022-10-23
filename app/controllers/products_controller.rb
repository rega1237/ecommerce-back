class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  def show
    @product = Product.includes(:comments).find(params[:id])
    render json: {
      product_data: {
        product: @product,
        comments: @product.comments
      }
    }, status: :ok
  end

  def create
    @product = Product.new(set_params)

    if @product.save
      render json: @product, status: :ok
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(set_params)
      render json: @product, status: :ok
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: @product, head: :no_content
  end

  private

  def set_params
    params.require(:product).permit(
      :name,
      :category,
      :description,
      :image,
      :price,
      :quantity
    )
  end
end
