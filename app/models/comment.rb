class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :text, length: { in: 10..500 }
end
