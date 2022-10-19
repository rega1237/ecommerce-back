class Product < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments, dependent: :destroy
  has_many :buy_sells
  has_many :users, through: :buy_sells, dependent: :destroy
end
