class BuySell < ApplicationRecord
  belongs_to :user
  belongs_to :product

  after_save :update_product

  private 
  
  def update_product
    product = Product.find(product_id)
    product.update(bought_times: product.bought_times + 1)
  end
end
