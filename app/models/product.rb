class Product < ApplicationRecord
  attr_accessor :name, :category, :description, :image, :price, :quantity, :bought_times

  has_many :comments
  has_many :users, through: :comments, dependent: :destroy
  has_many :buy_sells
  has_many :users, through: :buy_sells, dependent: :destroy

  validates :name, :category, :description, :image, :price, :quantity, presence: true
  validates :name, length: { maximum: 25 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, :bought_times, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
