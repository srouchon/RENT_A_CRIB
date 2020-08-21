class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :favorites
  has_many :products, through: :bookings
  has_many :fav_products, through: :favorites, class_name: "Product", foreign_key: "product_id", source: :product
end
