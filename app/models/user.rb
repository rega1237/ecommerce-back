class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :comments
  has_many :products, through: :comments
  has_many :buy_sells
  has_many :products, through: :buy_sells

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true
end
