class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    render json: @comment, status: :ok
  end

  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = Comment.new(set_params)
    @comment.user_id = @user.id
    @comment.product_id = @product.id

    if @comment.save
      render json: @comment, status: :ok
    else
      render json: { error: @user }, status: :unprocessable_entity
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(set_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @comment, head: :no_content
  end

  private

  def set_params
    params.require(:comment).permit(:text)
  end
end
